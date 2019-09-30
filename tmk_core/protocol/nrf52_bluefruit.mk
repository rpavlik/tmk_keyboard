BLUEFRUIT_DIR = protocol/nrf52_bluefruit

#SRC +=	$(BLUEFRUIT_DIR)/nrf52_main.cpp \
#	$(BLUEFRUIT_DIR)/nrf52_bluefruit.c \

OBJECTS += $(OBJDIR)/$(BLUEFRUIT_DIR)/nrf52_main.o \
	$(OBJDIR)/$(BLUEFRUIT_DIR)/nrf52_bluefruit.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEAdvertising.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLECentral.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLECharacteristic.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEClientCharacteristic.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEClientService.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEConnection.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEDiscovery.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEGatt.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEPeriph.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEScanner.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEService.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/BLEUuid.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/bluefruit.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEBas.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEBeacon.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEDfu.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEDis.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEHidAdafruit.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEHidGeneric.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEUart.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/utility/AdaMsg.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/utility/bonding.o \
	$(OBJDIR)/libraries/Bluefruit52Lib/src/utility/bootloader_util.o \
	$(OBJDIR)/libraries/Adafruit_LittleFS/src/Adafruit_LittleFS.o \
	$(OBJDIR)/libraries/Adafruit_LittleFS/src/Adafruit_LittleFS_File.o \
	$(OBJDIR)/libraries/Adafruit_LittleFS/src/littlefs/lfs.o \
	$(OBJDIR)/libraries/Adafruit_LittleFS/src/littlefs/lfs_util.o \
	$(OBJDIR)/libraries/InternalFileSytem/src/flash/flash_cache.o \
	$(OBJDIR)/libraries/InternalFileSytem/src/flash/flash_nrf5x.o \
	$(OBJDIR)/libraries/InternalFileSytem/src/InternalFileSystem.o \

INCLUDE_PATHS += \
	-I$(NRF52_DIR)/libraries/Bluefruit52Lib/src \
	-I$(NRF52_DIR)/libraries/Adafruit_LittleFS/src \
	-I$(NRF52_DIR)/libraries/InternalFileSytem/src \

# $(OBJDIR)/libraries/Bluefruit52Lib/src/services/BLEMidi.o \
# $(OBJDIR)/libraries/Bluefruit52Lib/src/services/EddyStone.o \
# $(OBJDIR)/libraries/Bluefruit52Lib/src/clients/BLEAncs.o \
# $(OBJDIR)/libraries/Bluefruit52Lib/src/clients/BLEClientBas.o \
# $(OBJDIR)/libraries/Bluefruit52Lib/src/clients/BLEClientCts.o \
# $(OBJDIR)/libraries/Bluefruit52Lib/src/clients/BLEClientDis.o \
# $(OBJDIR)/libraries/Bluefruit52Lib/src/clients/BLEClientHidAdafruit.o \
# $(OBJDIR)/libraries/Bluefruit52Lib/src/clients/BLEClientUart.o \

# Search Path
#VPATH += $(TMK_DIR)/$(BLUEFRUIT_DIR)

OPT_DEFS += -DPROTOCOL_NRF52BLUEFRUIT
