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
$(call inherit-product, vendor/motorola/obake/obake-vendor.mk)

LOCAL_PATH := device/motorola/obake

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/msp430sensorprocessor.kl:system/usr/keylayout/msp430sensorprocessor.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx_i2c.kl:system/usr/keylayout/synaptics_dsx_i2c.kl

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/synaptics_dsx_i2c.idc:system/usr/idc/synaptics_dsx_i2c.idc

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc \
    init.obake.sh

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald-obake.conf:system/etc/thermald-obake.conf \
    $(LOCAL_PATH)/configs/thermald-obakem.conf:system/etc/thermald-obakem.conf \
    $(LOCAL_PATH)/configs/thermald-obake-maxx.conf:system/etc/thermald-obake-maxx.conf

# WiFi
PRODUCT_PACKAGES += \
    WCNSS_qcom_wlan_nv.bin \
    WCNSS_qcom_wlan_nv_calibration.bin \
    WCNSS_qcom_wlan_nv_regulatory.bin

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wlan/WCNSS_qcom_wlan_nv_calibration_m.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_calibration_m.bin \
    $(LOCAL_PATH)/wlan/WCNSS_qcom_wlan_nv_regulatory_m.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_regulatory_m.bin \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_calibration.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_calibration.bin \
    $(LOCAL_PATH)/wlan/cal_files/WCNSS_qcom_wlan_nv_regulatory.bin:system/etc/firmware/wlan/prima/cal_files/WCNSS_qcom_wlan_nv_regulatory.bin

# Inherit from msm8960dt-common
$(call inherit-product, device/motorola/msm8960dt-common/msm8960dt-common.mk)
