#!/bin/bash

echo ""
echo "----------- 6.27.Libcap-2.27.sh -----------"
echo ""

cd /sources/
tar xvf libcap-2.27.tar.xz
cd libcap-2.27

sed -i '/install.*STALIBNAME/d' libcap/Makefile
make -j8
make RAISE_SETFCAP=no lib=lib prefix=/usr install
chmod -v 755 /usr/lib/libcap.so.2.27
mv -v /usr/lib/libcap.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libcap.so) /usr/lib/libcap.so

cd /sources/
rm -rf libcap-2.27