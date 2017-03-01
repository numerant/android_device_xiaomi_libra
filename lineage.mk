# Release name
PRODUCT_RELEASE_NAME := libra

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/device_libra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := libra
PRODUCT_NAME := lineage_libra
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-4c
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/libra/libra:7.0/NRD90M/7.2.23:user/release-keys" \
    PRIVATE_BUILD_DESC="libra-user 7.0 NRD90M 7.2.23 release-keys"

# Enable SU
WITH_SU := true
