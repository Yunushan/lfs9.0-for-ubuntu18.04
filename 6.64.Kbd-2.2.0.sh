#!/bin/bash

echo ""
echo "----------- 6.64.Kbd-2.2.0.sh -----------"
echo ""

cd /sources/
tar xvf kbd-2.2.0.tar.xz
cd kbd-2.2.0

patch -Np1 -i ../kbd-2.2.0-backspace-1.patch

sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr --disable-vlock
make -j8
make check
make install

mkdir -v       /usr/share/doc/kbd-2.2.0
cp -R -v docs/doc/* /usr/share/doc/kbd-2.2.0

cd /sources/
rm -rf kbd-2.2.0