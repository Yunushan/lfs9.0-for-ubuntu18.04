#!/bin/bash

echo ""
echo "----------- 5.16.Bash-5.0.sh -----------"
echo ""

cd $LFS/sources
tar xvf bash-5.0.tar.gz
cd bash-5.0

./configure --prefix=/tools --without-bash-malloc
make
make tests
make install
ln -sv bash /tools/bin/sh

cd $LFS/sources
rm -rf bash-5.0