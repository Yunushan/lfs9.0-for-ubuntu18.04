#!/bin/bash

echo ""
echo "----------- Starting 4.3.Adding-the-LFS-User.sh -----------"
echo ""

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb
location44=`sudo locate 4.4.Setting-Up-the-Environment.sh | head -n 1`
location53=`sudo locate 5.3.General-Compilation-Instructions.sh | head -n 1`
location54=`sudo locate 5.4 Binutils-2.32-Pass-1.sh | head -n 1`
location55=`sudo locate 5.5.GCC-9.2.0-Pass-1.sh | head -n 1`
location56=`sudo locate 5.6.Linux-5.2.8-API-Headers.sh | head -n 1`
location57=`sudo locate 5.7.Glibc-2.30.sh | head -n 1`
location58=`sudo locate 5.8.Libstdc++-from-GCC-9.2.0.sh | head -n 1`
location59=`sudo locate 5.9.Binutils-2.32-Pass-2.sh | head -n 1`
location510=`sudo locate 5.10.GCC-9.2.0-Pass-2.sh | head -n 1`
location511=`sudo locate 5.11.Tcl-8.6.9.sh | head -n 1`
location512=`sudo locate 5.12.Expect-5.45.4.sh | head -n 1`
location513=`sudo locate 5.13.DejaGNU-1.6.2.sh | head -n 1`
location514=`sudo locate 5.14.M4-1.4.18.sh | head -n 1`
location515=`sudo locate 5.15.Ncurses-6.1.sh | head -n 1`
location516=`sudo locate 5.16.Bash-5.0.sh | head -n 1`
location517=`sudo locate 5.17.Bison-3.4.1.sh | head -n 1`
location518=`sudo locate 5.18.Bzip2-1.0.8.sh | head -n 1`
location519=`sudo locate 5.19.Coreutils-8.31.sh | head -n 1`
location520=`sudo locate 5.20.Diffutils-3.7.sh | head -n 1`
location521=`sudo locate 5.21.File-5.37.sh | head -n 1`
location522=`sudo locate 5.22.Findutils-4.6.0.sh | head -n 1`
location523=`sudo locate 5.23.Gawk-5.0.1.sh | head -n 1`
location524=`sudo locate 5.24.Gettext-0.20.1.sh | head -n 1`
location525=`sudo locate 5.25.Grep-3.3.sh | head -n 1`
location526=`sudo locate 5.26.Gzip-1.10.sh | head -n 1`
location527=`sudo locate 5.27.Make-4.2.1.sh | head -n 1`
location528=`sudo locate 5.28.Patch-2.7.6.sh | head -n 1`
location529=`sudo locate 5.29.Perl-5.30.0.sh | head -n 1`
location530=`sudo locate 5.30.Python-3.7.4.sh | head -n 1`
location531=`sudo locate 5.31.Sed-4.7.sh | head -n 1`
location532=`sudo locate 5.32.Tar-1.32.sh | head -n 1`
location533=`sudo locate 5.33.Texinfo-6.6.sh | head -n 1`
location534=`sudo locate 5.34.Util-linux-2.34.sh | head -n 1`
location535=`sudo locate 5.35.Xz-5.2.4.sh | head -n 1`
location536=`sudo locate 5.36.Stripping.sh | head -n 1`


sudo groupadd lfs
sudo useradd -s /bin/bash -g lfs -m -k /dev/null lfs
printf "\n\nLFS Password  "
sudo passwd lfs
sudo chown -v lfs $LFS/sources
sudo chown -v lfs $LFS/tools
su - lfs -c "bash $location44 && bash $location53 && bash $location54 && bash $location55 && bash $location56 && bash $location57 && bash $location58
 && bash $location59 && bash $location510 && bash $location511 && bash $location512 && bash $location513 && bash $location514 && bash $location515
 && bash $location516 && bash $location517 && bash $location518 && bash $location519 && bash $location520 && bash $location521 && bash $location522 
 && bash $location523 && bash $location524 && bash $location525 && bash $location526 && bash $location527 && bash $location528 && bash $location529
 && bash $location530 && bash $location531 && bash $location532 && bash $location533 && bash $location534 && bash $location535 && bash $location536"