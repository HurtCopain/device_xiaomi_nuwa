#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/nuwa

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure updatable_apex.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Configure developer_gsi_keys.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Inherit common LineageOS configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier
PRODUCT_DEVICE := nuwa
PRODUCT_NAME := lineage_nuwa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2210132G
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nuwa_global-user 13 TKQ1.220905.001 V14.0.9.0.TMBMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/nuwa_global/nuwa:13/TKQ1.220905.001/V14.0.9.0.TMBMIXM:user/release-keys
