PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true

PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/aosp/prebuilt/common/bin/sysinit:system/bin/sysinit

# Init file
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/init.local.rc:root/init.custom.rc

# Fix Google dialer
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Camera Effects
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/common/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Packages
include vendor/aosp/config/packages.mk

# Branding
include vendor/aosp/config/branding.mk

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common
