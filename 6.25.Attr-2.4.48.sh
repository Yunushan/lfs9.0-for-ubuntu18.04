#!/bin/bash

echo ""
echo "----------- 6.25.Attr-2.4.48.sh -----------"
echo ""

cd /sources/
tar xvf attr-2.4.48.tar.gz
cd attr-2.4.48

./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.4.48

make -j8
make check
make install

mv -v /usr/lib/libattr.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libattr.so) /usr/lib/libattr.so

cd /sources/
rm -rf attr-2.4.48