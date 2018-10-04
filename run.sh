#!/usr/bin/env bash
apt-get update
apt-get -y install software-properties-common dirmngr
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 55751E5D
add-apt-repository "deb http://archive.neon.kde.org/dev/stable bionic main"
apt-get -y install live-build syslinux memtest86+ genisoimage mtools syslinux-utils xorriso syslinux-utils dctrl-tools squashfs-tools syslinux-themes-neon gfxboot-theme-ubuntu zsync
cd /build/
lb clean
./configure
lb build
