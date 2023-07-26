# config.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := x86_64
TARGET_ARCH := x86_64
TARGET_ARCH_VARIANT := x86_64

TARGET_2ND_CPU_ABI := x86
TARGET_2ND_ARCH := x86
TARGET_2ND_ARCH_VARIANT := x86_64

TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_IMAGE_NAME := vmlinuz
TARGET_KERNEL_CONFIG := android_jupiter_defconfig
TARGET_KERNEL_SOURCE := kernel/valve/jupiter

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/valve/jupiter/bluetooth

USE_OPENGL_RENDERER := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true

# Mesa
BOARD_GPU_DRIVERS := radeonsi

# PDK does not use ext4 image, but it is added here to prevent build break.
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512

TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop