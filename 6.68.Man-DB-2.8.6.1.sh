#!/bin/bash

echo ""
echo "----------- 6.68.Man-DB-2.8.6.1.sh -----------"
echo ""

cd /sources/
tar xvf man-db-2.8.6.1.tar.xz
cd man-db-2.8.6.1

sed -i '/find/s@/usr@@' init/systemd/man-db.service.in

./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.8.6.1 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --enable-cache-owner=bin             \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap

make -j8
make check
make install


cd /sources/
rm -rf man-db-2.8.6.1