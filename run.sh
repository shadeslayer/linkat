#!/usr/bin/env bash
apt-get update
apt-get -y install software-properties-common
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 55751E5D
add-apt-repository "deb http://archive.neon.kde.org/dev/stable bionic main"
apt update
apt-get -y install live-build syslinux memtest86+ genisoimage mtools syslinux-utils xorriso
cd /build/
lb clean
./configure
lb build
