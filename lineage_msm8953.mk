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
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from msm8953 device
AB_OTA_UPDATER := false
$(call inherit-product, device/lenovo/msm8953/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Custom stuff
EVO_BUILD_TYPE := Official
TARGET_USES_LEGACY_BOOTANIMATION := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_USES_PICO_GAPPS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := msm8953
PRODUCT_NAME := lineage_msm8953
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Lenovo
TARGET_VENDOR := Lenovo
BOARD_VENDOR := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=msm8953
