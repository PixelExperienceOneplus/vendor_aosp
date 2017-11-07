# Set all versions
CUSTOM_VERSION := aosp_$(CUSTOM_BUILD)-$(PLATFORM_VERSION)-$(shell date +%Y%m%d)-pissel

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.mod.version=$(CUSTOM_VERSION)

