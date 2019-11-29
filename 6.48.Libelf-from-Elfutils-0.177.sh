#!/bin/bash

echo ""
echo "----------- 6.48.Libelf-from-Elfutils-0.177.sh -----------"
echo ""

cd /sources/
tar xvf elfutils-0.177.tar.bz2
cd elfutils-0.177

./configure --prefix=/usr
make -j8
make check
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig

cd /sources/
rm -rf elfutils-0.177