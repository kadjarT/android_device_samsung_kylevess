## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyTrendLite

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kylevess/device_kylevess.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kylevess
PRODUCT_NAME := cm_kylevess
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S7390
PRODUCT_MANUFACTURER := samsung
