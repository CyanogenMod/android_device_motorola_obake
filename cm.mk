$(call inherit-product, device/motorola/obake/full_obake.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_RELEASE_NAME := DROID Ultra
PRODUCT_NAME := cm_obake
