echo 'Starting to clone stuffs needed to build for marble'


# Vendor
echo 'Cloning vendor tree'
rm -rf vendor/xiaomi/marble && git clone https://github.com/maul-s/vendor_xiaomi_marble.git -b droidx-13 vendor/xiaomi/marble


# Kernel
echo 'Cloning kernel tree'
rm -rf device/xiaomi/marble-kernel && git clone https://github.com/SMGLaboratory/device_xiaomi_marble-kernel.git -b main device/xiaomi/marble-kernel


# Gapps
#echo 'Cloning gapps'
#rm -rf vendor/gms && rm -rf vendor/gapps &&  git clone --depth=1 https://gitlab.com/vherawidatama/vendor_gms_mod.git vendor/gapps


# Camera
echo 'Cloning Leica Camera'
git clone https://gitlab.com/vherawidatama/proprietary_vendor_xiaomi_camera.git -b topaz-leica vendor/xiaomi/camera

# Hardware Xiaomi
echo 'Cloning Hardware Xiaomi'
rm -rf hardware/xiaomi && git clone https://github.com/SMGLaboratory/hardware_xiaomi.git hardware/xiaomi

# BCR tree
echo 'Cloning BCR Tree'
git clone https://github.com/maul-s/vendor_bcr.git vendor/bcr


echo 'delete vendorsetup.sh from device tree once this is done'
mv device/xiaomi/marble/vendorsetup.sh device/xiaomi/marble/vendorsetup.bak
