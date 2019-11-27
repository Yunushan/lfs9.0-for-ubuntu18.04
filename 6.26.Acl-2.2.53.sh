#!/bin/bash

echo ""
echo "----------- 6.26.Acl-2.2.53.sh -----------"
echo ""

cd /sources/
tar xvf acl-2.2.53.tar.gz
cd acl-2.2.53

./configure --prefix=/usr         \
            --disable-static      \
            --libexecdir=/usr/lib \
            --docdir=/usr/share/doc/acl-2.2.53

make -j8
make install
mv -v /usr/lib/libacl.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libacl.so) /usr/lib/libacl.so

cd /sources/
rm -rf acl-2.2.53