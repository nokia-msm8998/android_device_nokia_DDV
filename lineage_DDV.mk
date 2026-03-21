#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device
$(call inherit-product, device/nokia/DDV/device.mk)

PRODUCT_BRAND := Nokia
PRODUCT_DEVICE := DDV
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_MODEL := Nokia 7.2
PRODUCT_NAME := lineage_DDV

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="m690-user 11 RKQ1.210607.001 00WW_3_690_SP07 release-keys" \
    BuildFingerprint=Nokia/Daredevil_00WW/DDV_sprout:11/RKQ1.210607.001/00WW_3_69G:user/release-keys \
    DeviceProduct=DDV_sprout
