#!/bin/bash
echo 'Restarting adb...'
sudo adb kill-server
sudo adb start-server
echo 'Rebooting to fastboot'
adb reboot oem-unlock
echo 'Waiting to fastboot...'
sleep 5
echo 'Booting...'
sudo fastboot boot /home/artur/lge-kernel-omap4/arch/arm/boot/zImage
echo 'artas182x'

