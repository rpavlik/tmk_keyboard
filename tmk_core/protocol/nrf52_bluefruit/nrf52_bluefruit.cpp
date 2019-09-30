/*
Native BLE driver for nRF52 "Bluefruit" boards for TMK firmware
Author: Ryan Pavlik <ryan.pavlik@gmail.com>
Based on code Copyright (c) 2016 Adafruit Industries (MIT licensed)
Based on code Copyright 2013, Benjamin Gould
Based on code Copyright 2011 Jun Wako <wakojun@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
#include "nrf52_bluefruit.h"
#include <bluefruit.h>

static BLEHidAdafruit *blehid{nullptr};
static uint8_t bluefruit_keyboard_leds = 0;

/*------------------------------------------------------------------*
 * Host driver
 *------------------------------------------------------------------*/

static uint8_t keyboard_leds(void);
static void send_keyboard(report_keyboard_t *report);
static void send_mouse(report_mouse_t *report);
static void send_system(uint16_t data);
static void send_consumer(uint16_t data);

void set_bluefruit_hid(BLEHidAdafruit &hid) { blehid = &hid; }

static host_driver_t driver = {keyboard_leds, send_keyboard, send_mouse,
                               send_system, send_consumer};

host_driver_t *native_bluefruit_driver(void) { return &driver; }
void set_keyboard_leds(uint8_t leds) { bluefruit_keyboard_leds = leds; }
static uint8_t keyboard_leds(void) { return bluefruit_keyboard_leds; }

static void send_keyboard(report_keyboard_t *report) {
    blehid->keyboardReport(report->mods, report->keys);
}

static void send_mouse(report_mouse_t *report) {
    blehid->mouseReport(report->buttons, report->x, report->y, report->v,
                       report->h);
}

static void send_system(uint16_t data) {
    // blehid.consumerReport(data);
}

static void send_consumer(uint16_t data) {
    // blehid.consumerReport(data);
}
