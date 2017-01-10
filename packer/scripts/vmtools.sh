#!/bin/bash -eux
echo 'Y\n' | m-a prepare

mkdir /tmp/vbox
VER=$(cat /home/vagrant/.vbox_version)
wget -nc http://download.virtualbox.org/virtualbox/$VER/VBoxGuestAdditions_$VER.iso -d /home/vagrant/
mount -o loop /home/vagrant/VBoxGuestAdditions_$VER.iso /tmp/vbox
sh /tmp/vbox/VBoxLinuxAdditions.run --nox11
umount /tmp/vbox
rm -rf /tmp/vbox
rm /home/vagrant/*.iso
