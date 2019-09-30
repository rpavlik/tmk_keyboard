# based on Makefile exported form mbed.org
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

GCC_BIN = 
AS      = $(GCC_BIN)arm-none-eabi-as
CC      = $(GCC_BIN)arm-none-eabi-gcc
CPP     = $(GCC_BIN)arm-none-eabi-g++
CXX     = $(GCC_BIN)arm-none-eabi-g++
LD      = $(GCC_BIN)arm-none-eabi-gcc
OBJCOPY = $(GCC_BIN)arm-none-eabi-objcopy
OBJDUMP = $(GCC_BIN)arm-none-eabi-objdump
SIZE 	= $(GCC_BIN)arm-none-eabi-size

CC_FLAGS += \
	$(CPU) \
	-c \
	-g \
	-fno-common \
	-fmessage-length=0 \
	-Wall \
	-fno-exceptions \
	-ffunction-sections \
	-fdata-sections \
	-fomit-frame-pointer \
	-nostdlib \
	-DS132 \
	-DNRF52_S132 \
	-DSOFTDEVICE_PRESENT \
	-DARDUINO_NRF52_ADAFRUIT \
	-DNRF52_SERIES \
	-DARDUINO=10804 \
	-DARDUINO_ARCH_NRF52 \
	-DARDUINO_BSP_VERSION=\"0.13.0\" \
	-DNRF52 \
	-DPROTOCOL_FREERTOS \
	-DPROTOCOL_ARDUINO

CXX_FLAGS += \
	-fno-rtti

CC_FLAGS += -MMD -MP
CC_FLAGS += $(OPT_DEFS)

LD_FLAGS = $(CPU) -Wl,--gc-sections --specs=nano.specs
#LD_FLAGS += -u _printf_float -u _scanf_float
LD_FLAGS += -Wl,-Map=$(OBJDIR)/$(PROJECT).map,--cref
LD_SYS_LIBS = -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys

LIBRARY_PATHS += -L$(NRF52_DIR)/cores/nRF5/linker

ifeq ($(DEBUG), 1)
  CC_FLAGS += -DDEBUG -O0
else
  CC_FLAGS += -DNDEBUG -Os
endif

all: $(OBJDIR)/$(PROJECT).bin $(OBJDIR)/$(PROJECT).hex

clean:
	rm -f $(OBJDIR)/$(PROJECT).bin $(OBJDIR)/$(PROJECT).elf $(OBJDIR)/$(PROJECT).hex $(OBJDIR)/$(PROJECT).map $(OBJDIR)/$(PROJECT).lst $(OBJECTS) $(DEPS)
	rm -fr $(OBJDIR)

$(OBJDIR)/%.o: %.s
	mkdir -p $(@D)
	$(AS) $(CPU) -o $@ $<

$(OBJDIR)/%.o: %.c
	mkdir -p $(@D)
	$(CC)  $(CC_FLAGS) $(CC_SYMBOLS) -std=gnu99   $(INCLUDE_PATHS) -o $@ $<

$(OBJDIR)/%.o: %.cpp
	mkdir -p $(@D)
	@echo "$@ -> $<"
	$(CXX) $(CC_FLAGS) $(CXX_FLAGS) $(CC_SYMBOLS) -std=gnu++11 -fno-rtti $(INCLUDE_PATHS) -o $@ $<


$(OBJDIR)/$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS)
	$(LD) $(LD_FLAGS) -T$(LINKER_SCRIPT) $(LIBRARY_PATHS) -o $@ $^ $(LIBRARIES) $(LD_SYS_LIBS) $(LIBRARIES) $(LD_SYS_LIBS)
	$(SIZE) $@

$(OBJDIR)/$(PROJECT).bin: $(OBJDIR)/$(PROJECT).elf
	@$(OBJCOPY) -O binary $< $@

$(OBJDIR)/$(PROJECT).hex: $(OBJDIR)/$(PROJECT).elf
	@$(OBJCOPY) -O ihex $< $@

$(OBJDIR)/$(PROJECT).lst: $(OBJDIR)/$(PROJECT).elf
	@$(OBJDUMP) -Sdh $< > $@

lst: $(OBJDIR)/$(PROJECT).lst

size:
	$(SIZE) $(OBJDIR)/$(PROJECT).elf

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
