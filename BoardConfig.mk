#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4210-common/BoardCommonConfig.mk

TARGET_BOARD_INFO_FILE := device/samsung/u1att/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/u1att/bluetooth

# NFC
BOARD_HAVE_NFC := true

# BLN
BOARD_HAS_BLN := true

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4210
TARGET_KERNEL_CONFIG := lineageos_u1att_defconfig

# Selinux
BOARD_SEPOLICY_DIRS += device/samsung/u1att/selinux

# Assert
#TARGET_OTA_ASSERT_DEVICE := i777,s959g,u1att,SGH-I777,SGH-S959G

# Use the non-open-source parts, if they're present
-include vendor/samsung/u1att/BoardConfigVendor.mk
