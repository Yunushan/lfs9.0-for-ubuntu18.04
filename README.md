# Linux From Scartch 9.0 Installer For Ubuntu 18.04

## Purpose of this project

To install linux from scratch 9.0 with systemd as easy as possible for linux users on ubuntu 18.04 LTS.

## Known Bugs

In script `4.4.Setting-Up-the-Environment.sh`.Bash profile changes and i couldn't run .sh scripts after that automatically i'll explain how can you run them in my script order by order , Still trying to fix this issue (Your supports kindly accepted ^^).Beside from that my project is still `Fully` in testing phase,it is not completed yet.

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