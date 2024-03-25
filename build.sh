#!/bin/bash

path=/root

cd
git clone https://github.com/RaghuVarma331/aarch64-linux-android-4.9.git -b master --depth=1 aarch64-linux-android-4.9
cd kernel
clear
export ARCH=arm64
export CROSS_COMPILE=$path/aarch64-linux-android-4.9/bin/aarch64-linux-android-
mkdir output
make -C $(pwd) O=output pnx-perf_defconfig
make -j$(nproc --all) -C $(pwd) O=output
