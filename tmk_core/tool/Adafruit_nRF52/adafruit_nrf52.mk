VPATH += $(NRF52_DIR)/cores/nRF5/linker
OBJECTS += \
	$(OBJDIR)/cores/nRF5/abi.o \
	$(OBJDIR)/cores/nRF5/delay.o \
	$(OBJDIR)/cores/nRF5/HardwarePWM.o \
	$(OBJDIR)/cores/nRF5/hooks.o \
	$(OBJDIR)/cores/nRF5/IPAddress.o \
	$(OBJDIR)/cores/nRF5/itoa.o \
	$(OBJDIR)/cores/nRF5/main.o \
	$(OBJDIR)/cores/nRF5/new.o \
	$(OBJDIR)/cores/nRF5/Print.o \
	$(OBJDIR)/cores/nRF5/pulse.o \
	$(OBJDIR)/cores/nRF5/RingBuffer.o \
	$(OBJDIR)/cores/nRF5/rtos.o \
	$(OBJDIR)/cores/nRF5/Stream.o \
	$(OBJDIR)/cores/nRF5/Tone.o \
	$(OBJDIR)/cores/nRF5/Uart.o \
	$(OBJDIR)/cores/nRF5/WInterrupts.o \
	$(OBJDIR)/cores/nRF5/wiring_analog.o \
	$(OBJDIR)/cores/nRF5/wiring_analog_nRF52.o \
	$(OBJDIR)/cores/nRF5/wiring.o \
	$(OBJDIR)/cores/nRF5/wiring_digital.o \
	$(OBJDIR)/cores/nRF5/wiring_private.o \
	$(OBJDIR)/cores/nRF5/wiring_shift.o \
	$(OBJDIR)/cores/nRF5/WMath.o \
	$(OBJDIR)/cores/nRF5/WString.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/croutine.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/event_groups.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/list.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/queue.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/stream_buffer.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/tasks.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/timers.o \
	$(OBJDIR)/cores/nRF5/freertos/portable/CMSIS/nrf52/port_cmsis.o \
	$(OBJDIR)/cores/nRF5/freertos/portable/CMSIS/nrf52/port_cmsis_systick.o \
	$(OBJDIR)/cores/nRF5/freertos/portable/GCC/nrf52/port.o \
	$(OBJDIR)/cores/nRF5/freertos/Source/portable/MemMang/heap_3.o \
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
