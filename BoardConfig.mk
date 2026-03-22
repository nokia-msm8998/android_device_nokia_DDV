#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/DDV

# Inherit from nokia sdm660-common
include device/nokia/sdm660-common/BoardConfigCommon.mk

# A/B
AB_OTA_PARTITIONS += \
    dtbo \
    vbmeta

# Architecture
TARGET_CPU_VARIANT_RUNTIME := cortex-a73
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73

# Assertions
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := DDV,DDV_sprout

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Display
TARGET_SCREEN_DENSITY := 400

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/framework_compatibility_matrix.xml

# Kernel
TARGET_NEEDS_DTBOIMAGE := true
TARGET_KERNEL_CONFIG += vendor/nokia/DDV.config

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 10485760
BOARD_VENDORIMAGE_PARTITION_SIZE := 805306368

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/nokia/DDV/BoardConfigVendor.mk
