#!/bin/bash

echo ""
echo "----------- Starting 2.4.Creating-a-New-Partition.sh-----------"
echo ""


#Shrink /dev/sda3 10G
endpart=`sudo parted /dev/sda unit GB print | awk {'print $2 " " $3'} | tail -n 2 | head -n 1 | awk '{print $2}' | awk '{print int($1+0.5)}'`
if [ 10 -le "$endpart" ];then
printf "\n  --- Important  10G Shrinking from /dev/sda3 do you verify it ? --- \n\n"
remaining=$(echo $(( $endpart - 10 ))G)
sudo parted /dev/sda resizepart 3 $remaining Yes
fi

(
echo n # Add a new partition
echo 4 # Partition number (Default)
echo   # First sector (Accept default: 1)
echo +100M # Last sector (Accept default: varies sda4 boot)
echo n # Add a new partition
echo 5 # Partition number
echo   # First sector (Accept default: 1)
echo +6.6G # Last sector (Accept default: varies sda5 hdd)
echo n # Add a new partition
echo 6 # Partition number (Default)
echo   # First sector (Accept default: 1)
echo   # Last sector (Accept default: varies 3G swap sda6 swap)
echo w # Write changes
) | sudo fdisk /dev/sda