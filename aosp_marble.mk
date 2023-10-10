#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# GAPPS
WITH_GAPPS := true

# FireDroid Maintainer Flags
FIREDROID_MAINTAINER := Maul's
CUSTOM_BUILD_TYPE := OFFICIAL