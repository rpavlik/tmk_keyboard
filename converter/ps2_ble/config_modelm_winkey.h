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

#ifndef CONFIG_MODELM_WINKEY_H
#define CONFIG_MODELM_WINKEY_H

#include "config.h"

#undef MANUFACTURER
#define MANUFACTURER    t.m.k./Ryan Pavlik

#undef PRODUCT
#define PRODUCT         IBM Model M PS/2-BLE Keyboard Converter

#undef DESCRIPTION
#define DESCRIPTION     convert PS/2 keyboard to BLE HID mapping Caps Lock to the Windows key

#define BLE_MODEL       "IBM Model M"
#define BLE_MFR         "Ryan Pavlik/t.m.k."
#define BLE_NAME        "IBM-Model-M"



#endif
