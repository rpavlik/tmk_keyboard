/*
Copyright 2016 Jun Wako <wakojun@gmail.com>
Copyright 2019 Ryan Pavlik <ryan.pavlik@gmail.com>

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

#include "hook.h"

class BLEDis;

/* Called before we start the device information service, let you specify
 * details. Default just provides a manufacturer and model configured by
 * preprocessor defines BLE_MFR and BLE_MODEL.
 */
void hook_device_information(BLEDis &dis);
