#!/bin/bash

echo ""
echo "----------- Starting 2.Popt-1.16.sh -----------"
echo ""

export BLFS=/mnt/lfs/sources/blfs-packages


cd $BLFS
tar xvf popt-1.16.tar.gz
cd popt-1.16


#Install popt by running the following commands:

./configure --prefix=/usr --disable-static &&
make -j8
#If you have Doxygen-1.8.16 installed and wish to build the API documentation, issue:

#doxygen
#To test the results, issue: make check.

#Now, as the root user:

make install
#If you built the API documentation, install it using the following commands issued by the root user:

#install -v -m755 -d /usr/share/doc/popt-1.16 &&
#install -v -m644 doxygen/html/* /usr/share/doc/popt-1.16

cd $BLFS
rm -rf popt-1.16