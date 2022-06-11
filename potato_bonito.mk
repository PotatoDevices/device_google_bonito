#
# Copyright (C) 2020-2021 The Potato Open Sauce Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Potato stuff.
$(call inherit-product, vendor/potato/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

include device/google/bonito/device-potato.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL
PRODUCT_NAME := potato_bonito

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bonito-user 12 SP2A.220505.006 8561491 release-keys" \
    PRODUCT_NAME="bonito"

BUILD_FINGERPRINT := google/bonito/bonito:12/SP2A.220505.006/8561491:user/release-keys

$(call inherit-product, vendor/google/bonito/bonito-vendor.mk)
