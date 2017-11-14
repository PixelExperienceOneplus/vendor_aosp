# Set all versions
CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
CUSTOM_VERSION := PixelExperience_$(CUSTOM_BUILD)-$(PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.mod.version=$(CUSTOM_VERSION) \
    ro.mod.build_date=$(CUSTOM_BUILD_DATE)

