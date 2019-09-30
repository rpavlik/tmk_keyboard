# based on Makefile exported form mbed.org
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

CPU = -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mthumb

CC_SYMBOLS = \
	-DNRF52832_XXAA \
	-DF_CPU=64000000L \
	-DARDUINO_FEATHER52 \
	-DNRF52832

OBJECTS += \
	$(OBJDIR)/feather_nrf52832/variant.o
	# $(OBJDIR)/variant.o
	# $(OBJDIR)/variants/feather_nrf52832/variant.o

INCLUDE_PATHS += \
	-I$(NRF52_DIR)/variants/feather_nrf52832
LINKER_SCRIPT = $(NRF52_DIR)/cores/nRF5/linker/nrf52832_s132_v6.ld

VPATH += $(NRF52_DIR)/variants
