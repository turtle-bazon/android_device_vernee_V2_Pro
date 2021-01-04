#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
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
#

LOCAL_PATH := device/vernee/V2_Pro

TARGET_BOARD_PLATFORM := mt6763
TARGET_BOOTLOADER_BOARD_NAME := V2_Pro

# Recovery
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 0
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc/gadget/lun%d/file
TW_EXCLUDE_SUPERSU := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_CRYPTO := true
include $(LOCAL_PATH)/kernel.mk
include device/generic/twrpbuilder/BoardConfig64.mk

