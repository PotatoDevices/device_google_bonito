#
# Copyright (C) 2020-2021 The Potato Open Sauce Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common potato stuff.
$(call inherit-product, vendor/potato/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

include device/google/bonito/device-potato.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
PRODUCT_NAME := potato_sargo

# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sargo-user 12 SP2A.220505.006 8561491 release-keys" \
    PRODUCT_NAME="sargo"

BUILD_FINGERPRINT := google/sargo/sargo:12/SP2A.220505.006/8561491:user/release-keys

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)
