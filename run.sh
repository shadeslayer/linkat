#!/usr/bin/env bash
apt-get update
apt-get -y install live-build syslinux memtest86+ genisoimage
lb clean
./configure
lb build