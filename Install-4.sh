#!/bin/bash

echo ""
echo "----------- Starting Install-4.sh-----------"
echo ""

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb
lfs90=`sudo locate lfs9.0-for-ubuntu18.04 | head -n 1`
sudo chmod +x $lfs90
cd $lfs90

sudo ./6.5.Creating-Directories.sh
sudo ./6.6.Creating-Essential-Files-and-Symlinks.sh
sudo ./6.7.Linux-5.2.8-API-Headers.sh
sudo ./6.8.Man-pages-5.02.sh
sudo ./6.9.Glibc-2.30.sh
sudo ./6.10.Adjusting-the-Toolchain.sh
sudo ./6.11.Zlib-1.2.11.sh
sudo ./6.12.File-5.37.sh
sudo ./6.13.Readline-8.0.sh
sudo ./6.14.M4-1.4.18.sh
sudo ./6.15.Bc-2.1.3.sh
sudo ./6.16.Binutils-2.32.sh
sudo ./6.17.GMP-6.1.2.sh
sudo ./6.18.MPFR-4.0.2.sh
sudo ./6.19.MPC-1.1.0.sh
sudo ./6.20.Shadow-4.7.sh
sudo ./6.21.GCC-9.2.0.sh
sudo ./6.22.Bzip2-1.0.8.sh
sudo ./6.23.Pkg-config-0.29.2.sh
sudo ./6.24.Ncurses-6.1.sh
sudo ./6.25.Attr-2.4.48.sh
sudo ./6.26.Acl-2.2.53.sh
sudo ./6.27.Libcap-2.27.sh
sudo ./6.28.Sed-4.7.sh
sudo ./6.29.Psmisc-23.2.sh
sudo ./6.30.Iana-Etc-2.30.sh
sudo ./6.31.Bison-3.4.1.sh
sudo ./6.32.Flex-2.6.4.sh
sudo ./6.33.Grep-3.3.sh
sudo ./6.34.Bash-5.0.sh
sudo ./6.35.Libtool-2.4.6.sh
sudo ./6.36.GDBM-1.18.1.sh
sudo ./6.37.Gperf-3.1.sh
sudo ./6.38.Expat-2.2.7.sh
sudo ./6.39.Inetutils-1.9.4.sh
sudo ./6.40.Perl-5.30.0.sh
sudo ./6.41.XML-Parser-2.44.sh
sudo ./6.42.Intltool-0.51.0.sh
sudo ./6.43.Autoconf-2.69.sh
sudo ./6.44.Automake-1.16.1.sh
sudo ./6.45.Xz-5.2.4.sh
sudo ./6.46.Kmod-26.sh
sudo ./6.47.Gettext-0.20.1.sh
sudo ./6.48.Libelf-from-Elfutils-0.177.sh
sudo ./6.49.Libffi-3.2.1.sh
sudo ./6.50.OpenSSL-1.1.1c.sh
sudo ./6.51.Python-3.7.4.sh
sudo ./6.52.Ninja-1.9.0.sh
sudo ./6.53.Meson-0.51.1.sh
sudo ./6.54.Coreutils-8.31.sh
sudo ./6.55.Check-0.12.0.sh
sudo ./6.56.Diffutils-3.7.sh
sudo ./6.57.Gawk-5.0.1.sh
sudo ./6.58.Findutils-4.6.0.sh
sudo ./6.59.Groff-1.22.4.sh
sudo ./6.60.GRUB-2.04.sh
sudo ./6.61.Less-551.sh
sudo ./6.62.Gzip-1.10.sh
sudo ./6.63.IPRoute2-5.2.0.sh
sudo ./6.64.Kbd-2.2.0.sh
sudo ./6.65.Libpipeline-1.5.1.sh
sudo ./6.66.Make-4.2.1.sh
sudo ./6.67.Patch-2.7.6.sh
sudo ./6.68.Man-DB-2.8.6.1.sh
sudo ./6.69.Tar-1.32.sh
sudo ./6.70.Texinfo-6.6.sh
sudo ./6.71.Vim-8.1.1846.sh
sudo ./6.72.Systemd-241.sh
sudo ./6.73.D-Bus-1.12.16.sh
sudo ./6.74.Procps-ng-3.3.15.sh
sudo ./6.75.Util-linux-2.34.sh
sudo ./6.76.E2fsprogs-1.45.3.sh
sudo ./6.78.Stripping-Again.sh
sudo ./6.79.Cleaning-Up-Part-1.sh