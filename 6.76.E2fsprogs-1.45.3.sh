#!/bin/bash

echo ""
echo "----------- 6.76.E2fsprogs-1.45.3.sh -----------"
echo ""

cd /sources/
tar xvf e2fsprogs-1.45.3.tar.gz
cd e2fsprogs-1.45.3

mkdir -v build
cd       build

../configure --prefix=/usr           \
             --bindir=/bin           \
             --with-root-prefix=""   \
             --enable-elf-shlibs     \
             --disable-libblkid      \
             --disable-libuuid       \
             --disable-uuidd         \
             --disable-fsck

make -j8
make check
make install
make install-libs
chmod -v u+w /usr/lib/{libcom_err,libe2p,libext2fs,libss}.a

gunzip -v /usr/share/info/libext2fs.info.gz
install-info --dir-file=/usr/share/info/dir /usr/share/info/libext2fs.info

makeinfo -o      doc/com_err.info ../lib/et/com_err.texinfo
install -v -m644 doc/com_err.info /usr/share/info
install-info --dir-file=/usr/share/info/dir /usr/share/info/com_err.info


cd /sources/
rm -rf e2fsprogs-1.45.3