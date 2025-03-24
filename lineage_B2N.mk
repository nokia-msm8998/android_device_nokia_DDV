# Inherit some common Lineage stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device
$(call inherit-product, device/nokia/B2N/device.mk)

PRODUCT_BRAND := Nokia
PRODUCT_DEVICE := B2N
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_MODEL := Nokia 7 plus
PRODUCT_NAME := lineage_B2N

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Onyx_00WW-user 10 QKQ1.190828.002 00WW_4_16B release-keys" \
    BuildFingerprint=Nokia/Onyx_00WW/B2N_sprout:10/QKQ1.190828.002/00WW_4_16B:user/release-keys \
    DeviceProduct=B2N_sprout
