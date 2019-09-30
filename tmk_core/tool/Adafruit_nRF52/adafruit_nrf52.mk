VPATH += $(NRF52_DIR)/cores/nRF5/linker
OBJECTS += \
	$(OBJDIR)/cores/nRF5/abi.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/Adafruit_TinyUSB_Core.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/Adafruit_USBD_CDC.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/Adafruit_USBD_Device.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/class/cdc/cdc_device.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/class/hid/hid_device.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/class/midi/midi_device.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/class/msc/msc_device.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/class/vendor/vendor_device.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/common/tusb_fifo.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/device/usbd_control.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/device/usbd.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/portable/nordic/nrf5x/dcd_nrf5x.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/portable/nordic/nrf5x/hal_nrf5x.o \
	$(OBJDIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src/tusb.o \
	$(OBJDIR)/cores/nRF5/avr/dtostrf.o \
	$(OBJDIR)/cores/nRF5/delay.o \
	$(OBJDIR)/cores/nRF5/freertos/portable/CMSIS/nrf52/port_cmsis_systick.o \
	$(OBJDIR)/cores/nRF5/freertos/portable/CMSIS/nrf52/port_cmsis.o \
	$(OBJDIR)/cores/nRF5/freertos/portable/GCC/nrf52/port.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/croutine.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/event_groups.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/list.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/portable/MemMang/heap_3.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/queue.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/stream_buffer.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/tasks.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/timers.o \
	$(OBJDIR)/cores/nRF5/HardwarePWM.o \
	$(OBJDIR)/cores/nRF5/hooks.o \
	$(OBJDIR)/cores/nRF5/IPAddress.o \
	$(OBJDIR)/cores/nRF5/itoa.o \
	$(OBJDIR)/cores/nRF5/main.o \
	$(OBJDIR)/cores/nRF5/new.o \
	$(OBJDIR)/cores/nRF5/nordic/nrfx/drivers/src/nrfx_power.o \
	$(OBJDIR)/cores/nRF5/nordic/nrfx/drivers/src/nrfx_qspi.o \
	$(OBJDIR)/cores/nRF5/nordic/nrfx/hal/nrf_ecb.o \
	$(OBJDIR)/cores/nRF5/nordic/nrfx/hal/nrf_nvmc.o \
	$(OBJDIR)/cores/nRF5/nordic/nrfx/mdk/system_nrf52.o \
	$(OBJDIR)/cores/nRF5/nordic/nrfx/mdk/system_nrf52840.o \
	$(OBJDIR)/cores/nRF5/Print.o \
	$(OBJDIR)/cores/nRF5/pulse.o \
	$(OBJDIR)/cores/nRF5/RingBuffer.o \
	$(OBJDIR)/cores/nRF5/rtos.o \
	$(OBJDIR)/cores/nRF5/Stream.o \
	$(OBJDIR)/cores/nRF5/sysview/Config/SEGGER_SYSVIEW_Config_FreeRTOS.o \
	$(OBJDIR)/cores/nRF5/sysview/SEGGER_SYSVIEW_FreeRTOS.o \
	$(OBJDIR)/cores/nRF5/sysview/SEGGER/SEGGER_RTT.o \
	$(OBJDIR)/cores/nRF5/sysview/SEGGER/SEGGER_SYSVIEW.o \
	$(OBJDIR)/cores/nRF5/Tone.o \
	$(OBJDIR)/cores/nRF5/Uart.o \
	$(OBJDIR)/cores/nRF5/utility/AdaCallback.o \
	$(OBJDIR)/cores/nRF5/utility/adafruit_fifo.o \
	$(OBJDIR)/cores/nRF5/utility/debug.o \
	$(OBJDIR)/cores/nRF5/utility/utilities.o \
	$(OBJDIR)/cores/nRF5/WInterrupts.o \
	$(OBJDIR)/cores/nRF5/wiring_analog_nRF52.o \
	$(OBJDIR)/cores/nRF5/wiring_analog.o \
	$(OBJDIR)/cores/nRF5/wiring_digital.o \
	$(OBJDIR)/cores/nRF5/wiring_private.o \
	$(OBJDIR)/cores/nRF5/wiring_shift.o \
	$(OBJDIR)/cores/nRF5/wiring.o \
	$(OBJDIR)/cores/nRF5/WMath.o \
	$(OBJDIR)/cores/nRF5/WString.o \
	$(OBJDIR)/gcc_startup_nrf52.o \

INCLUDE_PATHS += \
	-I$(NRF52_DIR)/cores/nRF5 \
	-I$(NRF52_DIR)/libraries/Bluefruit52Lib/src \
	-I$(NRF52_DIR)/cores/nRF5/cmsis/include \
	-I$(NRF52_DIR)/cores/nRF5/nordic \
	-I$(NRF52_DIR)/cores/nRF5/nordic/nrfx \
	-I$(NRF52_DIR)/cores/nRF5/nordic/nrfx/hal \
	-I$(NRF52_DIR)/cores/nRF5/nordic/nrfx/mdk \
	-I$(NRF52_DIR)/cores/nRF5/nordic/nrfx/soc \
	-I$(NRF52_DIR)/cores/nRF5/nordic/nrfx/drivers/include \
	-I$(NRF52_DIR)/cores/nRF5/nordic/nrfx/drivers/src \
	-I$(NRF52_DIR)/cores/nRF5/nordic/softdevice/s132_nrf52_6.1.1_API/include \
	-I$(NRF52_DIR)/cores/nRF5/freertos/Source/include \
	-I$(NRF52_DIR)/cores/nRF5/freertos/config \
	-I$(NRF52_DIR)/cores/nRF5/freertos/portable/GCC/nrf52 \
	-I$(NRF52_DIR)/cores/nRF5/freertos/portable/CMSIS/nrf52 \
	-I$(NRF52_DIR)/cores/nRF5/sysview/SEGGER \
	-I$(NRF52_DIR)/cores/nRF5/sysview/Config \
	-I$(NRF52_DIR)/cores/nRF5/Adafruit_TinyUSB_Core \
	-I$(NRF52_DIR)/cores/nRF5/Adafruit_TinyUSB_Core/tinyusb/src \
	-I$(NRF52_DIR)/cores/nRF5 \
# TMK mbed protocol
# OBJECTS += \
# 	$(OBJDIR)/protocol/mbed/mbed_driver.o \
# 	$(OBJDIR)/protocol/mbed/HIDKeyboard.o

# INCLUDE_PATHS += \
# 	-I$(TMK_DIR)/protocol/mbed
