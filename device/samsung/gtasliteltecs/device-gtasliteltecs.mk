# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Define the device-specific properties
PRODUCT_NAME := ShadowOS_gtasliteltecs
PRODUCT_DEVICE := gtasliteltecs
PRODUCT_BRAND := ShadowBrand
PRODUCT_MODEL := ShadowDevice
PRODUCT_MANUFACTURER := Samsung
PRODUCT_RESTRICT_VENDOR_FILES := true

# Set any device-specific copy files
PRODUCT_COPY_FILES += device/samsung/gtasliteltecs/fstab.shadowos:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.shadowos

# Include the device-specific makefile
$(call inherit-product, device/samsung/gtasliteltecs/device-gtasliteltecs.mk)

# Include any vendor-specific makefile
$(call inherit-product-if-exists, vendor/samsung/gtasliteltecs/device-vendor-gtasliteltecs.mk)

# Add any required packages for the ShadowOS build
PRODUCT_PACKAGES += \
    ShadowOSLauncher \
    ShadowOSWallpapers