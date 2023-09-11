#!/bin/sh
PATCH_LOC=$PWD/device/xiaomi/marble/patch
cd frameworks/native
git apply $PATCH_LOC/frameworks/native/Vibration_OSS_marble.patch
cd libs/gui
git am $PATCH_LOC/frameworks/native/libs/gui/0001-Add-Support-FEAS.patch
