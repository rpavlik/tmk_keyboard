#include "bootloader.h"

#include <stdint.h>
#include "wiring.h"

__attribute__((weak)) void bootloader_jump(void) { enterSerialDfu(); }
