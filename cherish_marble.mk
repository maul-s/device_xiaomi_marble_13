#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from marble device.
$(call inherit-product, device/xiaomi/marble/device.mk)

## Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := cherish_marble

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ADDITIONAL Cherish
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_SUPPORTS_64_BIT_APPS := true
EXTRA_UDFPS_ANIMATIONS := true
CHERISH_VANILLA := true
TARGET_USE_PIXEL_FINGERPRINT := true


# GAPPS
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=SMGLaboratory
