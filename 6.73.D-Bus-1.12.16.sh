#!/bin/bash

echo ""
echo "----------- 6.73.D-Bus-1.12.16.sh -----------"
echo ""

cd /sources/
tar xvf dbus-1.12.16.tar.gz
cd dbus-1.12.16

./configure --prefix=/usr                       \
            --sysconfdir=/etc                   \
            --localstatedir=/var                \
            --disable-static                    \
            --disable-doxygen-docs              \
            --disable-xml-docs                  \
            --docdir=/usr/share/doc/dbus-1.12.16 \
            --with-console-auth-dir=/run/console

make -j8
make install

mv -v /usr/lib/libdbus-1.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libdbus-1.so) /usr/lib/libdbus-1.so

ln -sfv /etc/machine-id /var/lib/dbus

cd /sources/
rm -rf dbus-1.12.16