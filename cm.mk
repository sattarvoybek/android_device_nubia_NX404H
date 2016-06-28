$(call inherit-product, device/nubia/nx404h/full_nx404h.mk)

# Inherit some common CM stuff (mini)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Product configuration
PRODUCT_RELEASE_NAME := NUBIA
PRODUCT_GMS_CLIENTID_BASE := android-zte
# Unofficial build id
TARGET_UNOFFICIAL_BUILD_ID := Sattarvoybek
PRODUCT_NAME := cm_nx404h
