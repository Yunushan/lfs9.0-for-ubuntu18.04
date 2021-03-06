#!/bin/bash

echo ""
echo "----------- 6.45.Xz-5.2.4.sh -----------"
echo ""

cd /sources/
tar xvf xz-5.2.4.tar.xz
cd xz-5.2.4

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.4

make -j8
make check
make install
mv -v   /usr/bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} /bin
mv -v /usr/lib/liblzma.so.* /lib
ln -svf ../../lib/$(readlink /usr/lib/liblzma.so) /usr/lib/liblzma.so

cd /sources/
rm -rf xz-5.2.4