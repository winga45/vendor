# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=MDB08M BUILD_ID=MDB08M BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=0

ANDROID_NAME := ubermallow
export ANDROID_NAME

    CUSTOM_BUILD_TYPE := RELEASE
    PLATFORM_VERSION_CODENAME := RELEASE
    UBER_POSTFIX := -$(shell date -u +%Y%m%d)

ROM_DATE := $(shell date -u +%Y%m%d)-$(shell date -u +%H%M)
ROM_VERSION := $(ROM_DATE)-$(TARGET_DEVICE)
OTA_DATE := $(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.uber.version=$(ROM_VERSION) \
  ro.modversion=$(ROM_VERSION)

UBER_ROM_NAME := Ubermallow

