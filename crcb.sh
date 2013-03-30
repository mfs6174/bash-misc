#!/bin/bash
export PATH=$PATH:~/openwrt/backfire/brcm63xx/OpenWrt-Toolchain-brcm63xx-for-mips-gcc-4.3.3+cs_uClibc-0.9.30.1/toolchain-mips_gcc-4.3.3+cs_uClibc-0.9.30.1/usr/bin
export CFLAGS="-Os -s"
export LDFLAGS="-static"
export ac_cv_linux_vers=2.6.32
export CXX=mips-openwrt-linux-g++
export RANLIB=mips-openwrt-linux-uclibc-ranlib
export GCC=mips-openwrt-linux-gcc
export CPP=mips-openwrt-linux-cpp
export CC=mips-openwrt-linux-gcc

