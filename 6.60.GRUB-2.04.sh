#!/bin/bash

echo ""
echo "----------- 6.60.GRUB-2.04.sh -----------"
echo ""

cd /sources/
tar xvf grub-2.04.tar.xz
cd grub-2.04

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make -j8
make install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions

cd /sources/
rm -rf grub-2.04