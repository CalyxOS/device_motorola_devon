#
# SPDX-FileCopyrightText: 2023-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-14 d8b49-5dd2a release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-14/d8b49-5dd2a:user/release-keys \
    DeviceProduct=devon_g
