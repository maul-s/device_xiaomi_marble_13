#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Voltage OS stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

# Build stuff.
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_FACE_UNLOCK_OPTOUT := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_ADAPTIVE_CHARGING := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
AFTERLIFE_GAPPS := true
USE_PIXEL_CHARGING =: true
AFTERLIFE_MAINTAINER := SMGReborn x Mauls
TARGET_FACE_UNLOCK_SUPPORTED := true

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := afterlife_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Nuke AudioFX
TARGET_EXCLUDES_AUDIOFX := true