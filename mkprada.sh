export CROSS_COMPILE=~/.0ea89/toolchains/UBERTC/arm-eabi-4.9/bin/arm-eabi-
export ARCH=arm
export TARGET_PRODUCT=prada

make

make INSTALL_MOD_STRIP=1 INSTALL_MOD_PATH=../out/prada/system INSTALL_MOD_DIR=../out/prada/system android_modules_install

