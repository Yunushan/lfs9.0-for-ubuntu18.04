#!/bin/bash

echo ""
echo "----------- 5.8.Libstdc++-from-GCC-9.2.0.sh -----------"
echo ""

cd $LFS/sources
tar xvf gcc-9.2.0.tar.xz
cd gcc-9.2.0

mkdir -v build
cd       build
../libstdc++-v3/configure           \
    --host=$LFS_TGT                 \
    --prefix=/tools                 \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/9.2.0

make
make install

cd $LFS/sources
rm -rf gcc-9.2.0