#!/bin/bash

echo ""
echo "----------- 6.79.Cleaning-Up-Part-2.sh -----------"
echo ""

sudo chroot "$LFS" /usr/bin/env -i          \
    HOME=/root TERM="$TERM"            \
    PS1='(lfs chroot) \u:\w\$ '        \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin \
    /bin/bash --login

sudo rm -f /usr/lib/lib{bfd,opcodes}.a
sudo rm -f /usr/lib/libbz2.a
sudo rm -f /usr/lib/lib{com_err,e2p,ext2fs,ss}.a
sudo rm -f /usr/lib/libltdl.a
sudo rm -f /usr/lib/libfl.a
sudo rm -f /usr/lib/libz.a

sudo find /usr/lib /usr/libexec -name \*.la -delete