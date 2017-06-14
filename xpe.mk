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

$(call inherit-product, device/lenovo/karate/full_karate.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/XPe/config/common_full_phone.mk)
# for specific
$(call inherit-product, vendor/lenovo/karate/karate-vendor.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := xpe_karate
BOARD_VENDOR := lenovo
PRODUCT_DEVICE := karate
PRODUCT_MANUFACTURER := LENOVO

TARGET_VENDOR_PRODUCT_NAME := karate

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
