#!/bin/bash

echo ""
echo "----------- 8.2.Creating-the-etc-fstab-File.sh -----------"
echo ""


#The /etc/fstab file is used by some programs to determine where file systems are to be mounted by default, in which order, and which must be checked (for integrity errors) prior to mounting. Create a new file systems table like this:

cat > /etc/fstab << "EOF"
# Begin /etc/fstab

# file system  mount-point  type     options             dump  fsck
#                                                              order

/dev/sda5    /              ext4     defaults             1     1
/dev/sda6    swap           swap     pri=1                0     0
/dev/sda4    /boot          ext2     noauto               1     2

# End /etc/fstab
EOF

#Replace <xxx>, <yyy>, and <fff> with the values appropriate for the system, for example, sda2, sda5, and ext4. For details on the six fields in this file, see man 5 fstab.

#Filesystems with MS-DOS or Windows origin (i.e. vfat, ntfs, smbfs, cifs, iso9660, udf) need a special option, utf8, in order for non-ASCII characters in file names to be interpreted properly. For non-UTF-8 locales, the value of iocharset should be set to be the same as the character set of the locale, adjusted in such a way that the kernel understands it. This works if the relevant character set definition (found under File systems -> Native Language Support when configuring the kernel) has been compiled into the kernel or built as a module. However, if the character set of the locale is UTF-8, the corresponding option iocharset=utf8 would make the file system case sensitive. To fix this, use the special option utf8 instead of iocharset=utf8, for UTF-8 locales. The “codepage” option is also needed for vfat and smbfs filesystems. It should be set to the codepage number used under MS-DOS in your country. For example, in order to mount USB flash drives, a ru_RU.KOI8-R user would need the following in the options portion of its mount line in /etc/fstab:

#noauto,user,quiet,showexec,codepage=866,iocharset=koi8r
#The corresponding options fragment for ru_RU.UTF-8 users is:

#noauto,user,quiet,showexec,codepage=866,utf8
#Note that using iocharset is the default for iso8859-1 (which keeps the file system case insensitive), and the utf8 option tells the kernel to convert the file names using UTF-8 so they can be interpreted in the UTF-8 locale.

#It is also possible to specify default codepage and iocharset values for some filesystems during kernel configuration. The relevant parameters are named “Default NLS Option” (CONFIG_NLS_DEFAULT), “Default Remote NLS Option” (CONFIG_SMB_NLS_DEFAULT), “Default codepage for FAT” (CONFIG_FAT_DEFAULT_CODEPAGE), and “Default iocharset for FAT” (CONFIG_FAT_DEFAULT_IOCHARSET). There is no way to specify these settings for the ntfs filesystem at kernel compilation time.

#It is possible to make the ext3 filesystem reliable across power failures for some hard disk types. To do this, add the barrier=1 mount option to the appropriate entry in /etc/fstab. To check if the disk drive supports this option, run hdparm on the applicable disk drive. For example, if:

#hdparm -I /dev/sda | grep NCQ
#returns non-empty output, the option is supported.

#Note: Logical Volume Management (LVM) based partitions cannot use the barrier option.