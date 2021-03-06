#!/bin/bash

echo ""
echo "----------- 6.72.Systemd-241.sh -----------"
echo ""

cd /sources/
tar xvf systemd-241.tar.gz
cd systemd-241

patch -Np1 -i ../systemd-241-networkd_and_rdrand_fixes-1.patch
ln -sf /tools/bin/true /usr/bin/xsltproc

for file in /tools/lib/lib{blkid,mount,uuid}.so*; do
    ln -sf $file /usr/lib/
done

tar -xf ../systemd-man-pages-241.tar.xz
sed '177,$ d' -i src/resolve/meson.build
sed -i 's/GROUP="render", //' rules/50-udev-default.rules.in

mkdir -p build
cd       build

PKG_CONFIG_PATH="/usr/lib/pkgconfig:/tools/lib/pkgconfig" \
LANG=en_US.UTF-8                   \
CFLAGS+="-Wno-format-overflow"     \
meson --prefix=/usr                \
      --sysconfdir=/etc            \
      --localstatedir=/var         \
      -Dblkid=true                 \
      -Dbuildtype=release          \
      -Ddefault-dnssec=no          \
      -Dfirstboot=false            \
      -Dinstall-tests=false        \
      -Dkmod-path=/bin/kmod        \
      -Dldconfig=false             \
      -Dmount-path=/bin/mount      \
      -Drootprefix=                \
      -Drootlibdir=/lib            \
      -Dsplit-usr=true             \
      -Dsulogin-path=/sbin/sulogin \
      -Dsysusers=false             \
      -Dumount-path=/bin/umount    \
      -Db_lto=false                \
      -Drpmmacrosdir=no            \
      ..

LANG=en_US.UTF-8 ninja
LANG=en_US.UTF-8 ninja install
rm -f /usr/bin/xsltproc
systemd-machine-id-setup
rm -fv /usr/lib/lib{blkid,uuid,mount}.so*
rm -f /usr/lib/tmpfiles.d/systemd-nologin.conf

cd /sources/
rm -rf systemd-241