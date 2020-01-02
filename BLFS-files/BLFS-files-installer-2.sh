#!/bin/bash

echo ""
echo "----------- Starting BLFS-files-installer-2.sh-----------"
echo ""

#Run this file after '8.3.Linux-5.2.8.sh' ends and before '8.4.Using-GRUB-to-Set-Up-the-Boot-Process-starts.sh'
echo "Run this file after '8.3.Linux-5.2.8.sh' ends and before '8.4.Using-GRUB-to-Set-Up-the-Boot-Process-starts.sh"
sleep 1

#Original code from http://www.linuxfromscratch.org/hints/downloads/files/lfs-uefi.txt
#    grub-install --bootloader-id=LFS --recheck --debug &> grub.log

grub-install --bootloader-id=LFS --recheck --debug --efi-directory=/boot &> grub.log
tail grub.log
sleep 1


cat > /boot/grub/grub.cfg << "EOF"
    # Begin /boot/grub/grub.cfg
    set default=0
    set timeout=5
    
    insmod gzio
    insmod part_gpt
    insmod ext2
    set root=(hd0,2)
    # hd[x] is the drive of the LFS partion and gpt[y] is the partition
    
    insmod efi_gop
    insmod efi_uga
    insmod font
    if loadfont /boot/grub/fonts/unicode.pf2; then
      loadfont /boot/grub/fonts/unicode.pf2
      set gfxmode=auto
      insmod gfxterm
      set gfxpayload=keep
      terminal_output gfxterm
    fi
    
    menuentry "GNU/Linux, Linux vmlinuz-5.2.8-lfs-9.0-systemd"  {
      linux   /vmlinuz-5.2.8-lfs-9.0-systemd root=/dev/sda5 ro loglevel=3
    }  
EOF



#Please check this site for more information http://www.linuxfromscratch.org/lfs/view/9.0-systemd/chapter08/grub.html