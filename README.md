# Linux From Scartch 9.0 Installer For Ubuntu 18.04

## Purpose of this project

To install linux from scratch 9.0 with systemd as easy as possible for linux users on ubuntu 18.04 LTS.

## Known Bugs

In script `4.4.Setting-Up-the-Environment.sh`.Bash profile changes and i couldn't run .sh scripts after that automatically i'll explain how can you run them in my script order by order , Still trying to fix this issue (Your supports kindly accepted ^^).Beside from that my project is still `Fully` in testing phase,it is not completed yet.

## (Optional)
If you want comment/uncomment make check,make test parts of files you can choose them by selecting single file,multiple or all of them with all option `59`

After you enter `1-59` you will see `+` added on the right side of the file you've selected.That means it is chosen file(s)

After you selected desired files you must enter `60 Done` for proceed comment/uncomment files.

sudo bash Comment-out-specified-test-suites.sh

## (Optional 2 for uefi installation)
If you want install `UEFI` installation you need to run `BLFS-files` scripts  after `7.10.Systemd-Usage-and-Configuration.sh` done.`Before you run 8.2.Creating-the-etc-fstab.sh file`
You need to run `BLFS-files-installer-2.sh` in `BLFS-files` after `8.3.Linux-5.2.8.sh` section and before `8.4.Using-GRUB-to-Set-Up-the-Boot-Process.sh`

## Installation
(My personal suggestion is run bash scripts in root user)

First command will run until `4.4.Setting-Up-the-Environment.sh`.(4.4.Setting-Up-the-Environment.sh `won't` run with this command)

Second command will run only `4.4.Setting-Up-the-Environment.sh`

Third command will run until `5.37.Changing-Ownership.sh`.(5.37.Changing-Ownership.sh `won't` run with this command)

Fourth command will run only exit from lfs (I'm not %100 sure how many exit commands to reach your default or root user, one exit will be run in code and de second by your hand, i will check last state of this situation for certain knowledge)

Fifth command will run until `6.4.Entering-the-Chroot-Environment.sh` (6.4.Entering-the-Chroot-Environment.sh `won't` run with this command)

Sixth command will run until `6.79.Cleaning-Up-Part-2.sh` (6.79.Cleaning-Up-Part-2.sh `won't` run with this command)

(Make sure you quit `lfs` user ) Seventh command will run 
Seventh command will run only `6.79.Cleaning-Up-Part-2.sh` for now


Automatic Installation Order

1-) sudo bash Install-1.sh

2-) sudo bash 4.4.Setting-Up-the-Environment.sh

3-) sudo bash Install-2.sh

4-) exit (2 times until you reach root user or your current user)

5-) sudo bash Install-3.sh

6-) sudo bash Install-4.sh

7-) sudo bash Install-5.sh