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

# Inherit from markw device
$(call inherit-product, device/xiaomi/markw/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := markw
PRODUCT_NAME := lineage_markw
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4 Prime
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
SUSHI_BOOTANIMATION := 1080

# Maintainer flag
RICE_MAINTAINER := IndieRock00

# Device flag
RICE_DEVICE := markw

# Disable/Enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

#Official
RICE_OFFICIAL := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="markw-user 6.0.1 MMB29M V10.2.2.0.MBEMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/markw/markw:6.0.1/MMB29M/V10.2.2.0.MBEMIXM:user/release-keys
