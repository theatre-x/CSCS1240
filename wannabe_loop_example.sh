#!/bin/bash

function sys_update {
if [ -f /usr/bin/apt-get ]
then
echo "=============================="
echo "**** Checking for updates ****"
echo "=============================="
apt-get update
echo "=============================="
echo "**** Starting upgrades ****"
echo "=============================="
apt-get upgrade
echo "==============================="
echo "**** Starting Dist-Upgrade ****"
echo "==============================="
apt-get dist-upgrade
else
echo "Not an APT-based system ..."
fi
if [ -f /usr/bin/yum ]
then
echo "=========================="
echo "**** Running updates *****"
echo "=========================="
yum update
else
echo "Not a YUM based system ..."
fi
if [ -f /usr/bin/zypper ]
then
echo "========================="
echo "**** Running updates ****"
echo "========================="
zypper update
else
echo "Not a Zypper based system ..."
fi
if [ -f /usr/bin/yaourt ]
then
echo "========================="
echo "**** Running updates ****"
echo "========================="
yaourt -Syyua
elif [ -f /usr/bin/pacman ]
then
echo "========================="
echo "**** Running updates ****"
echo "========================="
pacman -Syyu
else
echo "Not an ArchLinux based system ..."
fi

}
