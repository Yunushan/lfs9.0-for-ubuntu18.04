#!/bin/bash

echo ""
echo "----------- 6.29.Psmisc-23.2.sh -----------"
echo ""

cd /sources/
tar xvf psmisc-23.2.tar.xz
cd psmisc-23.2

./configure --prefix=/usr
make -j8
make install
mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin


cd /sources/
rm -rf psmisc-23.2