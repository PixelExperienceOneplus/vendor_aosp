GAPPS_VARIANT := nano
GAPPS_FORCE_MMS_OVERRIDES := true
GAPPS_FORCE_DIALER_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true
GAPPS_FORCE_MATCHING_DPI := true

# Packages
PRODUCT_PACKAGES += \
    CalendarGooglePrebuilt \
    CalculatorGoogle \
    PrebuiltDeskClockGoogle \
    GoogleContacts \
    LatinImeGoogle \
    TagGoogle \
    Photos

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
