#!/bin/sh
PATCH_LOC=$PWD/device/xiaomi/marble/patch
cd frameworks/native
git am $PATCH_LOC/frameworks/native/Vibration_OSS_marble.patch
