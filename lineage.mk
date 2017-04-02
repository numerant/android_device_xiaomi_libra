# Release name
PRODUCT_RELEASE_NAME := libra

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := libra
PRODUCT_NAME := lineage_libra
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-4c
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \

PRODUCT_NAME="libra" \
BUILD_FINGERPRINT="Xiaomi/libra/libra:5.1.1/LMY47V/V8.2.1.0.LXKCNDL:user/release-keys" \
PRIVATE_BUILD_DESC="libra-user 5.1.1 LMY47V V8.2.1.0.LXKCNDL release-keys"

# Enable SU
WITH_SU := true
