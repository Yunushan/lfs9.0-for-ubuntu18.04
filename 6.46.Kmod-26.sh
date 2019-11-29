#!/bin/bash

echo ""
echo "----------- 6.46.Kmod-26.sh -----------"
echo ""

cd /sources/
tar xvf kmod-26.tar.xz
cd kmod-26

./configure --prefix=/usr          \
            --bindir=/bin          \
            --sysconfdir=/etc      \
            --with-rootlibdir=/lib \
            --with-xz              \
            --with-zlib

make -j8
make install

for target in depmod insmod lsmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /sbin/$target
done

ln -sfv kmod /bin/lsmod


cd /sources/
rm -rf kmod-26