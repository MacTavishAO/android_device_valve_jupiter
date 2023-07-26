# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1-service.btlinux

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Fstab
PRODUCT_PACKAGES += \
    fstab.jupiter

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.jupiter:$(TARGET_COPY_OUT_RAMDISK)/fstab.jupiter

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.mapper@2.0-impl-2.1

PRODUCT_PACKAGES += \
    gralloc.gbm \
    hwcomposer.drm \
    libGLES_mesa

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/valve/jupiter \
    external/mesa3d

# Vulkan
PRODUCT_PACKAGES += \
    vulkan.radv
