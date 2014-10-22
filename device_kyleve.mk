#
# Copyright (C) 2014 The AOSP Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#Vendor Files
$(call inherit-product-if-exists, vendor/samsung/kyleve/kyleve-vendor.mk)

# Use high-density artwork where available
# Screen density
PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS += device/samsung/kyleve/overlay

LOCAL_PATH := device/samsung/kyleve
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	device/samsung/kyleve/permissions/access.control.xml:system/etc/permissions/access.control.xml \
	device/samsung/kyleve/permissions/android.hardware.camera.flash.xml:system/etc/permissions/android.hardware.camera.flash.xml \
	device/samsung/kyleve/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	device/samsung/kyleve/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	device/samsung/kyleve/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	device/samsung/kyleve/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	device/samsung/kyleve/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	device/samsung/kyleve/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	device/samsung/kyleve/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	device/samsung/kyleve/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	device/samsung/kyleve/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	device/samsung/kyleve/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	device/samsung/kyleve/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	device/samsung/kyleve/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
	device/samsung/kyleve/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	device/samsung/kyleve/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	device/samsung/kyleve/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	device/samsung/kyleve/permissions/com.samsung.device.xml:system/etc/permissions/com.samsung.device.xml \
	device/samsung/kyleve/permissions/com.sec.android.app.minimode.xml:system/etc/permissions/com.sec.android.app.minimode.xml \
	device/samsung/kyleve/permissions/com.sec.feature.minimode.xml:system/etc/permissions/com.sec.feature.minimode.xml \
	device/samsung/kyleve/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	device/samsung/kyleve/permissions/org.simalliance.openmobileapi.xml:system/etc/permissions/org.simalliance.openmobileapi.xml \
	device/samsung/kyleve/permissions/platform.xml:system/etc/permissions/platform.xml \
	device/samsung/kyleve/permissions/seccamera.xml:system/etc/permissions/seccamera.xml \
	device/samsung/kyleve/permissions/sec_edm.xml:system/etc/permissions/sec_edm.xml \
	device/samsung/kyleve/permissions/sec_feature.xml:system/etc/permissions/sec_feature.xml \
	device/samsung/kyleve/permissions/sec_hardware_library.xml:system/etc/permissions/sec_hardware_library.xml \
	device/samsung/kyleve/permissions/sec_mdm.xml:system/etc/permissions/sec_mdm.xml \
	device/samsung/kyleve/permissions/secmediarecorder.xml:system/etc/permissions/secmediarecorder.xml \
	device/samsung/kyleve/permissions/sec_platform_library.xml:system/etc/permissions/sec_platform_library.xml \
	device/samsung/kyleve/permissions/vtmanager_library.xml:system/etc/permissions/vtmanager_library.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

#CONFIG FILES
PRODUCT_COPY_FILES += \
	device/samsung/kyleve/config/alsa.conf:system/etc/alsa.conf \
	device/samsung/kyleve/config/apns-conf.xml:system/etc/apns-conf.xml \
	device/samsung/kyleve/config/asound.conf:system/etc/asound.conf \
	device/samsung/kyleve/config/audio_effects.conf:system/etc/audio_effects.conf \
	device/samsung/kyleve/config/audio_policy.conf:system/etc/audio_policy.conf \
	device/samsung/kyleve/config/DiamondVoice_Filter_NB.txt:system/etc/DiamondVoice_Filter_NB.txt \
	device/samsung/kyleve/config/DiamondVoice_Filter_WB.txt:system/etc/DiamondVoice_Filter_WB.txt \
	device/samsung/kyleve/config/DiamondVoice_NB.txt:system/etc/DiamondVoice_NB.txt \
	device/samsung/kyleve/config/DiamondVoice_WB.txt:system/etc/DiamondVoice_WB.txt \
	device/samsung/kyleve/config/egl.cfg:system/etc/egl.cfg \
	device/samsung/kyleve/config/gps.conf:system/etc/gps.conf \
	device/samsung/kyleve/config/media_codecs.xml:system/etc/media_codecs.xml \
	device/samsung/kyleve/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/kyleve/config/sec_touchscreen.idc:system/etc/sec_touchscreen.idc \
	device/samsung/kyleve/config/srm.bin:system/etc/srm.bin \
	device/samsung/kyleve/config/usb_portd.conf:system/etc/usb_portd.conf \
	device/samsung/kyleve/config/vold.fstab:system/etc/vold.fstab \
	device/samsung/kyleve/config/Volume.db:system/etc/Volume.db \
	device/samsung/kyleve/config/gps/glconfig.xml:system/etc/gps/glconfig.xml \
	device/samsung/kyleve/config/wifi/bcmdhd_apsta.bin:system/etc/bcmdhd_apsta.bin \
	device/samsung/kyleve/config/wifi/bcmdhd_mfg.bin:system/etc/bcmdhd_mfg.bin \
	device/samsung/kyleve/config/wifi/bcmdhd_p2p.bin:system/etc/bcmdhd_p2p.bin \
	device/samsung/kyleve/config/wifi/bcmdhd_sta.bin:system/etc/bcmdhd_sta.bin \
	device/samsung/kyleve/config/wifi/nvram_mfg.txt:system/etc/nvram_mfg.txt \
	device/samsung/kyleve/config/wifi/nvram_net.txt:system/etc/nvram_net.txt \
	device/samsung/kyleve/config/wifi/wpa_supplicant.conf:system/etc/wpa_supplicant.conf

	
#BUILD.PROP
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	hwui.render_dirty_regions=false \
	ro.telephony.ril_class=SamsungBCMRIL \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.sys.usb.config=adb \
	ro.zygote.disable_gl_preload=true \
	rild.libpath=/system/lib/libbrcm_ril.so \
	wifi.interface=wlan0 \
	mobiledata.interfaces=rmnet0,pdp0,wlan0,eth0,gprs,ppp0
	
PRODUCT_PACKAGES += \
	libstagefrighthw \
	libSEC_OMX_Resourcemanager \
	libSEC_OMX_Core \
	ibOMX.SEC.AVC.Decoder \
	libOMX.SEC.M4V.Decoder \
	libOMX.SEC.WMV.Decoder \
	libOMX.SEC.AVC.Encoder \
	libOMX.SEC.M4V.Encoder \
	e2fsck \
	make_ext4fs \
	setup_fs \
	libexifa \
	libjpega \
	libkeyutils \
	audio.a2dp.default \
	libasound \
	libasound_module_pcm_bcmfilter \
	bcm_dut \
	librs_jni \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	VisualizationWallpapers
	

# Device-specific packages
PRODUCT_PACKAGES += \
	SamsungServiceMode \
	libsecril-client \
	libsecril-client-sap

	
# Charger
PRODUCT_PACKAGES += \
        charger \
        charger_res_images
        
# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#Classic
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
