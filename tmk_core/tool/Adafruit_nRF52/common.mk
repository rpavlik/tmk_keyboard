OBJECTS += \
	$(OBJDIR)/common/action.o \
	$(OBJDIR)/common/action_tapping.o \
	$(OBJDIR)/common/action_macro.o \
	$(OBJDIR)/common/action_layer.o \
	$(OBJDIR)/common/action_util.o \
	$(OBJDIR)/common/host.o \
	$(OBJDIR)/common/keymap.o \
	$(OBJDIR)/common/keyboard.o \
	$(OBJDIR)/common/print.o \
	$(OBJDIR)/common/debug.o \
	$(OBJDIR)/common/util.o \
	$(OBJDIR)/common/hook.o \
	# $(OBJDIR)/common/mbed/suspend.o \
	# $(OBJDIR)/common/mbed/timer.o \
	# $(OBJDIR)/common/mbed/xprintf.o \
	# $(OBJDIR)/common/mbed/bootloader.o \

INCLUDE_PATHS += \
	-I$(TMK_DIR)/common \
	-I$(TMK_DIR)/protocol

CC_FLAGS += -include $(CONFIG_H)

# VPATH += $(NRF52_DIR)/cores/nRF5:$(NRF52_DIR)/libraries/Bluefruit52Lib/src
VPATH += $(NRF52_DIR)

# OBJECTS += $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SRC)))

# Option modules
ifdef BOOTMAGIC_ENABLE
    $(error Not Supported)
endif

ifdef MOUSEKEY_ENABLE
    OBJECTS += $(OBJDIR)/common/mousekey.o
    OPT_DEFS += -DMOUSEKEY_ENABLE
    OPT_DEFS += -DMOUSE_ENABLE
endif

ifdef EXTRAKEY_ENABLE
    $(error Not Supported)
endif

ifdef CONSOLE_ENABLE
    $(error Not Supported)
else
    OPT_DEFS += -DNO_PRINT
    OPT_DEFS += -DNO_DEBUG
endif

ifdef COMMAND_ENABLE
    $(error Not Supported)
endif

ifdef NKRO_ENABLE
    $(error Not Supported)
    OPT_DEFS += -DNKRO_ENABLE
endif

ifdef SLEEP_LED_ENABLE
    $(error Not Supported)
endif

ifdef BACKLIGHT_ENABLE
    $(error Not Supported)
endif

ifdef KEYMAP_SECTION_ENABLE
    $(error Not Supported)
endif
