/*********************************************************************
 This is an example for our nRF52 based Bluefruit LE modules

 Pick one up today in the adafruit shop!

 Adafruit invests time and resources providing this open source code,
 please support Adafruit and open-source hardware by purchasing
 products from Adafruit!

 MIT license, check LICENSE for more information
 All text above, and the splash screen below must be included in
 any redistribution
*********************************************************************/
#include <Arduino.h>
#include <bluefruit.h>

#include "keyboard.h"
#include "nrf52_bluefruit.h"
#include "nrf52_hooks.h"

static BLEDis bledis;
static BLEHidAdafruit blehid;

/* Default hooks definitions. */
__attribute__((weak)) void hook_early_init(void) {}

__attribute__((weak)) void hook_late_init(void) {}

__attribute__((weak)) void hook_device_information(BLEDis &dis) {

// Configure and Start Device Information Service
#ifndef BLE_MFR
#define BLE_MFR "Adafruit Industries/t.m.k."
#endif
#ifndef BLE_MODEL
#define BLE_MODEL "Bluefruit Feather 52 BLE keyboard"
#endif

    dis.setManufacturer(BLE_MFR);
    dis.setModel(BLE_MODEL);
}

__attribute__((weak)) void hook_advertising() {}

static void startAdv(void) {
    // Advertising packet
    Bluefruit.Advertising.addFlags(BLE_GAP_ADV_FLAGS_LE_ONLY_GENERAL_DISC_MODE);
    Bluefruit.Advertising.addTxPower();
    Bluefruit.Advertising.addAppearance(BLE_APPEARANCE_HID_KEYBOARD);

    // Include BLE HID service
    Bluefruit.Advertising.addService(blehid);
    hook_advertising();

    // There is enough room for the dev name in the advertising packet
    if (!Bluefruit.Advertising.addName()) {
        Serial.println("Could not include entire name in advertising packet.");
    }

    /* Start Advertising
     * - Enable auto advertising if disconnected
     * - Interval:  fast mode = 20 ms, slow mode = 152.5 ms
     * - Timeout for fast mode is 30 seconds
     * - Start(timeout) with timeout = 0 will advertise forever (until
     * connected)
     *
     * For recommended advertising interval
     * https://developer.apple.com/library/content/qa/qa1931/_index.html
     */
    Bluefruit.Advertising.restartOnDisconnect(true);
    Bluefruit.Advertising.setInterval(32, 244); // in unit of 0.625 ms
    Bluefruit.Advertising.setFastTimeout(30); // number of seconds in fast mode
    Bluefruit.Advertising.start(
        0); // 0 = Don't stop advertising after n seconds
}

/**
 * Callback invoked when received Set LED from central.
 * Must be set previously with setKeyboardLedCallback()
 *
 * The LED bit map is as follows: (also defined by KEYBOARD_LED_* )
 *    Kana (4) | Compose (3) | ScrollLock (2) | CapsLock (1) | Numlock (0)
 */
void set_keyboard_led(uint16_t conn_handle, uint8_t led_bitmap) {
    (void)conn_handle;
    // These are the same as USB.
    set_keyboard_leds(led_bitmap);
    hook_keyboard_leds_change(led_bitmap);
}

void setup() {
    hook_early_init();
    Serial.begin(115200);
    while (!Serial)
        delay(10); // for nrf52840 with native usb

    Serial.println("Bluefruit52 PS/2 to BLE HID Keyboard Adapter");
    Serial.println();
    Serial.print("SoftDevice and bootloader version: ");
    Serial.println(getBootloaderVersion());
    Serial.print("Unique ID: ");
    Serial.println(getMcuUniqueID());

    Bluefruit.begin();
#ifdef BLE_NAME
    Bluefruit.setName(BLE_NAME);
    Serial.println("Connect to " BLE_NAME " to use");
#endif
    Bluefruit.setTxPower(4); // Check bluefruit.h for supported values

    hook_device_information(bledis);
    bledis.begin();

    set_bluefruit_hid(blehid);

    /* Start BLE HID
     * Note: Apple requires BLE device must have min connection interval >= 20m
     * ( The smaller the connection interval the faster we could send data).
     * However for HID and MIDI device, Apple could accept min connection
     * interval up to 11.25 ms. Therefore BLEHidAdafruit::begin() will try to
     * set the min and max connection interval to 11.25  ms and 15 ms
     * respectively for best performance.
     */
    blehid.begin();

    // Set callback for set LED from central
    blehid.setKeyboardLedCallback(set_keyboard_led);

    /* Set connection interval (min, max) to your perferred value.
     * Note: It is already set by BLEHidAdafruit::begin() to 11.25ms - 15ms
     * min = 9*1.25=11.25 ms, max = 12*1.25= 15 ms
     */
    /* Bluefruit.Periph.setConnInterval(9, 12); */

    // Set up and start advertising
    startAdv();

    hook_late_init();
}

void loop() { keyboard_task(); }
