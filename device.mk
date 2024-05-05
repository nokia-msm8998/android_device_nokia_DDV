#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/DDV

# Inherit from the common device configuration.
TARGET_NOKIA_PLATFORM := sdm660
$(call inherit-product, device/nokia/msm8998-common/msm8998-common.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Wi-Fi
PRODUCT_PACKAGES += \
    WifiOverlayDDV

# Inherit device specific vendor makefiles
$(call inherit-product, vendor/nokia/DDV/DDV-vendor.mk)
