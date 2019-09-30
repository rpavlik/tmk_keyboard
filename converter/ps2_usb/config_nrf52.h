/*
Copyright 2012 Jun Wako <wakojun@gmail.com>

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

#ifndef CONFIG_H
#define CONFIG_H

#include <avr/interrupt.h>

#define VENDOR_ID       0xFEED
#define PRODUCT_ID      0x6513
#define DEVICE_VER      0x0001
#define MANUFACTURER    t.m.k./Ryan Pavlik
#define PRODUCT         IBM Model M PS/2-BLE Keyboard Converter
#define DESCRIPTION     convert PS/2 keyboard to BLE HID mapping Caps Lock to the Windows key


/* matrix size */
#define MATRIX_ROWS 32  // keycode bit: 3-0
#define MATRIX_COLS 8   // keycode bit: 6-4


/* key combination for command */
#define IS_COMMAND() ( \
    keyboard_report->mods == (MOD_BIT(KC_LSHIFT) | MOD_BIT(KC_RSHIFT)) || \
    keyboard_report->mods == (MOD_BIT(KC_LALT) | MOD_BIT(KC_RALT)) \
)


//#define NO_SUSPEND_POWER_DOWN
#define NO_ACTION_MACRO

/*
 * PS/2 Busywait
 */
#define PS2_CLOCK_PIN   3
#define PS2_DATA_PIN    4

#ifdef NDEBUG
#define CFG_DEBUG 0
#else
#define CFG_DEBUG 1
#endif

#endif
