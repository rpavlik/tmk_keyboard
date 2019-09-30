PROJECT ?= ps2_ble

TMK_DIR = ../../tmk_core
NRF52_DIR = $(TMK_DIR)/tool/Adafruit_nRF52/Adafruit_nRF52_Arduino

VPATH += $(TMK_DIR):$(NRF52_DIR):../ps2_usb

OBJDIR = ./build

OBJECTS = \
	$(OBJDIR)/protocol/ps2_busywait.o \
	$(OBJDIR)/protocol/ps2_io_arduino.o \
	$(OBJDIR)/./matrix.o \
	$(OBJDIR)/./led.o

ifdef KEYMAP
    OBJECTS := $(OBJDIR)/keymap_$(KEYMAP).o $(OBJECTS)
else
    OBJECTS := $(OBJDIR)/keymap_plain.o $(OBJECTS)
endif

CONFIG_H ?= config.h

SYS_OBJECTS = 

INCLUDE_PATHS = -I.

LIBRARY_PATHS = 
LIBRARIES = 

# Build Options
#   Comment out to disable
MOUSEKEY_ENABLE ?= yes

include $(TMK_DIR)/protocol/nrf52_bluefruit.mk

include $(TMK_DIR)/tool/Adafruit_nRF52/common.mk
include $(TMK_DIR)/tool/Adafruit_nRF52/feather_nrf52832.mk
include $(TMK_DIR)/tool/Adafruit_nRF52/adafruit_nrf52.mk
include $(TMK_DIR)/tool/Adafruit_nRF52/gcc.mk
