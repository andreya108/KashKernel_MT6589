#!/bin/bash

export CROSS_COMPILE=~/.0ea89/toolchains/UBERTC/arm-eabi-4.9/bin/arm-eabi-
export ARCH=arm
export TARGET_PRODUCT=prada
out=../out/prada

make && \
make INSTALL_MOD_STRIP=1 INSTALL_MOD_PATH=$out/system INSTALL_MOD_DIR=$out/system android_modules_install && \
cp arch/arm/boot/zImage $out/ && \
( cd $out; zip -r kashkernel-3.4.5-prada.zip * )
