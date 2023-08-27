# Apex
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

PRODUCT_PACKAGES += \
    com.android.sepolicy \
    precompiled_sepolicy.apex_sepolicy.sha256

# Audio HAL
PRODUCT_PACKAGES += \
    android.hardware.audio.service-jupiter \
    android.hardware.audio@6.0-impl \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.bluetooth.audio-impl

$(call inherit-product, hardware/libaudio/alsa.mk)

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1-service.btlinux

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Camera HAL
PRODUCT_PACKAGES += \
    camera.default

PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-external-service \
    android.hardware.camera.provider@2.4-impl

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

# Drm HAL
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service-lazy \
    android.hardware.drm@1.4-service-lazy.clearkey

# Rootdir
PRODUCT_PACKAGES += \
    fstab.jupiter

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.jupiter:$(TARGET_COPY_OUT_RAMDISK)/fstab.jupiter \
    $(LOCAL_PATH)/rootdir/etc/fstab.jupiter:$(TARGET_COPY_OUT_ROOT)/fstab.jupiter \
    $(LOCAL_PATH)/rootdir/etc/init.jupiter.rc:$(TARGET_COPY_OUT_ROOT)/init.jupiter.rc

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service

PRODUCT_PACKAGES += \
    gralloc.minigbm \
    hwcomposer.drm_minigbm_celadon \
    libGLES_mesa \
    libGLESv2_swiftshader \
    libEGL_swiftshader \
    libgallium_dri \
    libglapi \
    amdgpu.ids

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.jupiter

# Media codec
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.2-ffmpeg-service \
    android.hardware.media.omx@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    external/mesa/src/util/00-mesa-defaults.conf:$(TARGET_COPY_OUT_VENDOR)/etc/drirc

# Memtrack
PRODUCT_PACKAGES += \
    memtrack.default \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.gamepad.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.gamepad.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.opengles.deqp.level-2022-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level-2022-03-01.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2022-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level-2022-03-01.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml

# Power HAL
PRODUCT_PACKAGES += \
    power.x86 \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service

# Sensors HAL
PRODUCT_PACKAGES += \
    sensors.iio

PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/valve/jupiter \
    external/mesa3d

# Stagefright FFMPEG plugins
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service \
    com.android.future.usb.accessory

# Vndbinder
PRODUCT_PACKAGES += \
    vndservicemanager

# Vulkan
PRODUCT_PACKAGES += \
    vulkan.radeon

# WLAN
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wificond \
    wpa_supplicant \
    TetheringConfigOverlay

# PRODUCT_PACKAGES += \
#     android.hardware.wifi@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# Inherit vendor
$(call inherit-product, vendor/valve/jupiter/jupiter-vendor.mk)