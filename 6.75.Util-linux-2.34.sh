#!/bin/bash

echo ""
echo "----------- 6.75.Util-linux-2.34.sh -----------"
echo ""

cd /sources/
tar xvf util-linux-2.34.tar.xz
cd util-linux-2.34

mkdir -pv /var/lib/hwclock
rm -vf /usr/include/{blkid,libmount,uuid}

./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --docdir=/usr/share/doc/util-linux-2.34 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python

make -j8

#-------------------------------------------------------------#

#Warning
#Running the test suite as the root user can be harmful to your system. 
#To run it, the CONFIG_SCSI_DEBUG option for the kernel must be available in the currently running system, and must be built as a module. 
#Building it into the kernel will prevent booting. For complete coverage, other BLFS packages must be installed. 
#If desired, this test can be run after rebooting into the completed LFS system and running

#bash tests/run.sh --srcdir=$PWD --builddir=$PWD

#chown -Rv nobody .
#su nobody -s /bin/bash -c "PATH=$PATH make -k check"

#-------------------------------------------------------------#

make install

cd /sources/
rm -rf util-linux-2.34