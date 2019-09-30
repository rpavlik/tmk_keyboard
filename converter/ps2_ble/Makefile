PROJECT ?= ps2_ble

TMK_DIR = ../../tmk_core
NRF52_DIR = $(TMK_DIR)/tool/Adafruit_nRF52/Adafruit_nRF52_Arduino

VPATH += $(TMK_DIR):$(NRF52_DIR):../ps2_usb

OBJDIR = ./build

OBJECTS = \
	$(OBJDIR)/protocol/ps2_io_nrf52.o \
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
PS2_USE_BUSYWAIT ?= yes
PS2_USE_INT ?= no


ifeq (yes,$(strip $(PS2_USE_BUSYWAIT)))
    OBJECTS += $(OBJDIR)/protocol/ps2_busywait.o
    OPT_DEFS += -DPS2_USE_BUSYWAIT
endif
ifeq (yes,$(strip $(PS2_USE_INT)))
    OBJECTS += $(OBJDIR)/protocol/ps2_interrupt.o
    OPT_DEFS += -DPS2_USE_INT
endif

include $(TMK_DIR)/protocol/nrf52_bluefruit.mk

include $(TMK_DIR)/tool/Adafruit_nRF52/common.mk
include $(TMK_DIR)/tool/Adafruit_nRF52/feather_nrf52832.mk
include $(TMK_DIR)/tool/Adafruit_nRF52/adafruit_nrf52.mk
include $(TMK_DIR)/tool/Adafruit_nRF52/gcc.mk
