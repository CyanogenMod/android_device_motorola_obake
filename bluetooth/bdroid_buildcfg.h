/*
 * Copyright (C) 2014 The CyanogenMod Project <http://www.cyanogenmod.org>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#include <cutils/properties.h>
#include <string.h>

inline const char* BtmGetDefaultName()
{
	char device[PROPERTY_VALUE_MAX];
	property_get("ro.boot.device", device, "");

	if (!strcmp("obakem", device))
		return "Motorola DROID Mini";
	if (!strcmp("obake", device))
		return "Motorola DROID Ultra";
	if (!strcmp("obake-maxx", device))
		return "Motorola DROID MAXX";

	return "";
}

#define BTM_DEF_LOCAL_NAME BtmGetDefaultName()
#define BTA_DISABLE_DELAY 1000 /* in milliseconds */
#define BLUETOOTH_QTI_SW TRUE
#endif
