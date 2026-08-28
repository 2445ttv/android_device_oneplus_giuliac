#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from giuliac device
$(call inherit-product, device/oneplus/giuliac/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_giuliac
PRODUCT_DEVICE := giuliac
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PKG110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1780929007121 release-keys" \
    BuildFingerprint=OnePlus/PKG110/OP5D2BL1:16/UKQ1.231108.001/V.2d1b9a2-8e0775-93314e:user/release-keys \
    DeviceName=OP5D2BL1 \
    DeviceProduct=PKG110 \
    SystemDevice=OP5D2BL1 \
    SystemName=PKG110

# GMS
# WITH_GMS is a boolean flag to indicate 
# whether to include Google Mobile Services (GMS) in the build.
WITH_GMS ?= true
# LatinIMEGooglePrebuilt
# Only works on vanilla builds,
# GMS builds will use the Google IME from GMS.
TARGET_INCLUDE_GOOGLEIME ?= true
TARGET_GOOGLEIME_OVERRIDE_IME ?= true

# Spoof Props
# Set to true to enable spoofing fake props.
# For letting apps think they are running on a locked device.
AVIUM_FORCE_SET_FAKE_PROP ?= true

# Settings
# Soc model name
AVIUM_SETTINGS_SOC_MODEL_NAME ?= Snapdragon® 8 Gen 3
# Device code name
AVIUM_SETTINGS_DEVICE_CODENAME ?= giulia

# Maintainer
# AVIUM_MAINTAINER is a string that represents the maintainer of the build.
AVIUM_MAINTAINER ?= o_O