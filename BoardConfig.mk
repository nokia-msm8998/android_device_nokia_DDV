#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common device tree
include device/nokia/msm8998-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := lineageos_DDV_defconfig

# Props
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
