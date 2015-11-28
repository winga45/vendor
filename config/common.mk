# Copyright (C) 2015 UBER Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy

# UBER property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=24 \
    pm.sleep.mode=1 \
    wifi.supplicant_scan_interval=180 \
    windowsmgr.max_events_per_sec=150 \
    debug.performance.tuning=1 \
    ro.ril.power_collapse=1 \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0 \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/uber/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/uber/overlay/$(TARGET_PRODUCT)

# APN
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Camera Effects
PRODUCT_COPY_FILES +=  \
    vendor/uber/prebuilt/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/uber/prebuilt/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

#extras
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/uber/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \

# Backuptool support
PRODUCT_COPY_FILES += \
    vendor/uber/prebuilt/addon.d/50-uber.sh:system/addon.d/50-uber.sh \
    vendor/uber/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/uber/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh

# Additional Packages
PRODUCT_PACKAGES += \
    Exchange2 \
    LockClock \
    OmniSwitch

# Inherit common product build prop overrides
-include vendor/uber/config/version.mk

