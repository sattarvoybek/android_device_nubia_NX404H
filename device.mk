#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product, vendor/nubia/nx404h/nx404h-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# CMActions
PRODUCT_PACKAGES += \
    CMActions

# Wifi
PRODUCT_COPY_FILES += \
    kernel/nubia/nx404h/drivers/staging/prima/firmware_bin/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    kernel/nubia/nx404h/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/nubia/nx404h/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

# Inherit from msm8226-common
$(call inherit-product, device/nubia/nx404h/msm8226.mk)
# LTE, GSM/WCDMA
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.get_imsi_from_sim=true
