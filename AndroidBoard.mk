LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/samsung/kyleve/AndroidBoardVendor.mk

# Init files
PRODUCT_COPY_FILES += \
device/samsung/kyleve/rootdir/init.hawaii_ss_kyleve.rc:root/init.hawaii_ss_kyleve.rc \
device/samsung/kyleve/rootdir/init.bcm2166x.usb.rc:root/init.bcm2166x.usb.rc \
device/samsung/kyleve/rootdir/init.bt.rc:root/init.bt.rc \
device/samsung/kyleve/rootdir/init.log.rc:root/init.log.rc \
device/samsung/kyleve/rootdir/init.recovery.kyleve.rc:root/init.recovery.kyleve.rc \
device/samsung/kyleve/rootdir/rootdir/lpm.rc:root/lpm.rc \
device/samsung/kyleve/rootdir/ueventd.hawaii_ss_kyleve.rc:root/ueventd.hawaii_ss_kyleve.rc \
device/samsung/kyleve/rootdir/fstab.hawaii_ss_kyleve:root/fstab.hawaii_ss_kyleve \

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
device/samsung/kyleve/rootdir/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
device/samsung/kyleve/rootdir/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
device/samsung/kyleve/rootdir/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
device/samsung/kyleve/rootdir/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl

# Prebuilt kcm keychars
PRODUCT_COPY_FILES += \
device/samsung/kyleve/rootdir/bcm_keypad_v2.kcm:system/usr/keychars/bcm_keypad_v2.kcm

# Prebuilt icu
PRODUCT_COPY_FILES += \
device/samsung/kyleve/rootdir/icudt48l.dat:system/usr/icu/icudt48l.dat

# Prebuilt idc
PRODUCT_COPY_FILES += \
device/samsung/kyleve/rootdir/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc
