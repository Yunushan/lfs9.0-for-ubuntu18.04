#!/bin/bash

echo ""
echo "----------- 8.4.Using-GRUB-to-Set-Up-the-Boot-Process.sh -----------"
echo ""

grub-install /dev/sda

cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod ext2
set root=(hd0,2)

menuentry "GNU/Linux, Linux 5.2.8-lfs-9.0-systemd" {
        linux   /boot/vmlinuz-5.2.8-lfs-9.0-systemd root=/dev/sda5 ro
}
EOF