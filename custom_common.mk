#
# Copyright (C) 2023 Another KitchenSink Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PACKAGE_OVERLAYS += device/google/gs201/overlay-custom

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/gs201/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# Face Unlock
PRODUCT_PACKAGES += \
    FaceEnrollOverlay \
    FaceEnrollSettingsOverlay

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    packages/modules/Bluetooth/android/app
