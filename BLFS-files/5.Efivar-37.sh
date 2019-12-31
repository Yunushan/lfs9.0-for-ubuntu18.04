#!/bin/bash

echo ""
echo "----------- Starting 5.Efivar-37.sh -----------"
echo ""

export BLFS=/mnt/lfs/sources/blfs-packages

cd $BLFS
tar xvf efivar-37.tar.bz2
cd efivar-37

#Download:
#* https://github.com/rhboot/efivar/releases/download/37/efivar-37.tar.bz2
#* Required patch:
#http://www.linuxfromscratch.org/~xry111/efivar-37-gcc_9-1.patch

#Apply a patch to make some fixes required by gcc-9:

patch -Np1 -i ../efivar-37-gcc_9-1.patch

#Compile the package:

make libdir=/usr/lib
  
#  The meaning of the make parameter:

#* `libdir=/usr/lib`: This option overrides the default library directory
#of the package (`/usr/lib64`).

#  Despite the Makefile having a `test` target, albeit one which isn't run
#  by default, you SHOULD NOT run that `make test`, as it has been found
#  to cause firmware bugs. Here are the thoughts on, and the exhortation
#  not to do, this from the `efivar` community: 
#  https://github.com/rhboot/efivar/issues/78 .

#Install the package:

#  Now as the `root` user:

make libdir=/usr/lib install
cd $BLFS
rm -rf efivar-37