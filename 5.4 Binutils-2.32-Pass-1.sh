#!/bin/bash

echo ""
echo "----------- 5.4 Binutils-2.32-Pass-1.sh-----------"
echo ""

cd $LFS/sources
tar xvf binutils-2.32.tar.xz
cd binutils-2.32

mkdir -v build
cd       build
../configure --prefix=/tools            \
             --with-sysroot=$LFS        \
             --with-lib-path=/tools/lib \
             --target=$LFS_TGT          \
             --disable-nls              \
             --disable-werror
make -j4
#If building on x86_64, create a symlink to ensure the sanity of the toolchain:
case $(uname -m) in
  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac

make install

cd $LFS/sources
rm -rf binutils-2.32