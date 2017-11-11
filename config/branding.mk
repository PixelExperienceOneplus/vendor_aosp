# Set all versions
CUSTOM_VERSION := PixelExperience_$(CUSTOM_BUILD)-$(PLATFORM_VERSION)-$(shell date -u +%Y%m%d-%H%M)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.mod.version=$(CUSTOM_VERSION)

