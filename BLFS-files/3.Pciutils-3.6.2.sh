#!/bin/bash

echo ""
echo "----------- Starting 3.Pciutils-3.6.2.sh -----------"
echo ""


export BLFS=/mnt/lfs/sources/blfs-packages

cd $BLFS
tar xvf pciutils-3.6.2.tar.xz
cd pciutils-3.6.2

#pciutils Dependencies
#Recommended
#cURL-7.65.3, Wget-1.20.3, OR Lynx-2.8.9rel.1 (for the update-pciids script to function correctly).

#User Notes: http://wiki.linuxfromscratch.org/blfs/wiki/pciutils

#Installation of PCI Utils
#Install PCI Utils by running the following commands:

make PREFIX=/usr                \
     SHAREDIR=/usr/share/hwdata \
     SHARED=yes
#This package does not come with a test suite.

#Now, as the root user:

make PREFIX=/usr                \
     SHAREDIR=/usr/share/hwdata \
     SHARED=yes                 \
     install install-lib        &&

chmod -v 755 /usr/lib/libpci.so
#Command Explanations
#SHARED=yes: This parameter enables building of the shared library instead of the static one.

#ZLIB=no: This option prevents compression of the pci.ids file.

#Configuring PCI Utils
#The pci.ids data file is constantly being updated. To get a current version of this file, run update-pciids as the root user. This program requires the Which-2.21 script or program to find cURL-7.65.3, Lynx-2.8.9rel.1 or Wget-1.20.3 which are used to download the most current file, and then replace the existing file in /usr/share/hwdata.

#You should update the /usr/share/hwdata/pci.ids file periodically. Execute the following commands, as the root user, to create a systemd timer to update it weekly on Sundays at 2:30 A.M. (local time):

cat > /lib/systemd/system/update-pciids.service << "EOF" &&
[Unit]
Description=Update pci.ids file
Documentation=man:update-pciids(8)
DefaultDependencies=no
After=local-fs.target network-online.target
Before=shutdown.target

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=/usr/sbin/update-pciids
EOF
cat > /lib/systemd/system/update-pciids.timer << "EOF" &&
[Unit]
Description=Update pci.ids file weekly

[Timer]
OnCalendar=Sun 02:30:00
Persistent=true

[Install]
WantedBy=timers.target
EOF
systemctl enable update-pciids.timer

#Contents
#Installed Programs:
#lspci, setpci, and update-pciids
#Installed Library:
#libpci.so
#Installed Directory:
#/usr/include/pci and /usr/share/hwdata
#Short Descriptions
#lspci

#is a utility for displaying information about all PCI buses in the system and all devices connected to them.

#setpci

#is a utility for querying and configuring PCI devices.

#update-pciids

#fetches the current version of the PCI ID list.

#libpci.so

#is library that allows applications to access the PCI subsystem.


cd $BLFS
rm -rf pciutils-3.6.2