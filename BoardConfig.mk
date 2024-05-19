#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Assert
TARGET_OTA_ASSERT_DEVICE := DDV,DDV_sprout,Daredevil

# QCOM
TARGET_BOARD_PLATFORM := sdm660

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Inherit from common device tree
include device/nokia/msm8998-common/BoardConfigCommon.mk

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := lineageos_DDV_defconfig

# Props
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit the proprietary files
include vendor/nokia/DDV/BoardConfigVendor.mk
