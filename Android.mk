# Copyright (C) 2017-2020 The LineageOS Project
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

LOCAL_PATH := device/samsung/j7elte

ifneq ($(filter j7elte,$(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Remove_Packages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := AmbientSensePrebuilt AppDirectedSMSService
LOCAL_OVERRIDES_PACKAGES += Camera2 CarrierSetup ConnMO DCMO
LOCAL_OVERRIDES_PACKAGES += DMService DevicePolicyPrebuilt
LOCAL_OVERRIDES_PACKAGES += DiagnosticsToolPrebuilt HelpRtcPrebuilt
LOCAL_OVERRIDES_PACKAGES += Maps MyVerizonServices NgaResources
LOCAL_OVERRIDES_PACKAGES += OBDM_Permissions OemDmTrigger Photos
LOCAL_OVERRIDES_PACKAGES += PixelLiveWallpaperPrebuilt
LOCAL_OVERRIDES_PACKAGES += PixelWallpapers2021 PrebuiltGmail
LOCAL_OVERRIDES_PACKAGES += RecorderPrebuilt SafetyHubPrebuilt
LOCAL_OVERRIDES_PACKAGES += ScribePrebuilt Showcase
LOCAL_OVERRIDES_PACKAGES += SoundAmplifierPrebuilt
LOCAL_OVERRIDES_PACKAGES += SprintDM SprintHM Tycho USCCDM VZWAPNLib
LOCAL_OVERRIDES_PACKAGES += VzwOmaTrigger obdm_stub
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
