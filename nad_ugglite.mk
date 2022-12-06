#
# Copyright (C) 2017 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ugglite device
$(call inherit-product, device/xiaomi/ugglite/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# GAPPS
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720
IS_PHONE := true
NAD_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
USE_LAWNCHAIR := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ugglite
PRODUCT_NAME := nad_ugglite
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 5A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220905.004 8927612 release-keys"
    BUILD_FINGERPRINT="google/raven/raven:13/TP1A.220905.004/8927612:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
 ro.build.fingerprint=$(BUILD_FINGERPRINT)
