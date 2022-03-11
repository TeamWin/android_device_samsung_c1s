# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/c1s/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/c1s/recovery/root,recovery/root)

# Device identifier
PRODUCT_RELEASE_NAME := c1s
PRODUCT_DEVICE := c1s
PRODUCT_NAME := twrp_c1s
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy Note 20
PRODUCT_MANUFACTURER := samsung

