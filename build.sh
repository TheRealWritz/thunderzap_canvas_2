make TARGET_PRODUCT=s9081 MTK_ROOT_CUSTOM=mediatek/custom CROSS_COMPILE=/home/nightelf/dvpt/android/my-toolchain-arm-eabi-gcc-linaro-4.7/arm-eabi-4.7/bin/arm-eabi-
echo -e "Making boot.img"
./repack.pl -boot arch/arm/boot/zImage ramdisk boot.img
echo -e "Making flashable zip"
zip -r kernelflasher META-INF boot.img
