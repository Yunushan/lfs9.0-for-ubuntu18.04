#!/bin/bash

echo ""
echo "----------- Starting Install-5.sh-----------"
echo ""

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb
lfs90=`sudo locate lfs9.0-for-ubuntu18.04 | head -n 1`
sudo chmod +x $lfs90
cd $lfs90

sudo ./6.79.Cleaning-Up-Part-2.sh