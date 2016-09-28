#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common
-include device/motorola/msm8960dt-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/obake/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/obake

# Assert
TARGET_OTA_ASSERT_DEVICE := xt1030,obakem,obakem_verizon,xt1080,obake,obake_verizon,xt1080m,obake-maxx,obake-maxx_verizon

# Bluetooth includes
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Init
TARGET_INIT_VENDOR_LIB := libinit_obake
TARGET_NR_SVC_SUPP_GIDS := 28
TARGET_RECOVERY_DEVICE_MODULES := libinit_obake
TARGET_UNIFIED_DEVICE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions (set for 16 GB)
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1560281088
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12884885504
