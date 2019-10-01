#!/bin/bash

echo ""
echo "----------- 6.4.Entering-the-Chroot-Environment.sh -----------"
echo ""


chroot "$LFS" /tools/bin/env -i \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
    /tools/bin/bash --login +h 

    