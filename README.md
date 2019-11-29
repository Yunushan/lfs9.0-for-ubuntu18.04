# Linux From Scartch 9.0 Installer For Ubuntu 18.04

## Purpose of this project

To install linux from scratch 9.0 with systemd as easy as possible for linux users on ubuntu 18.04 LTS.

## Known Bugs

In `4.4.Setting-Up-the-Environment.sh`.Bash profile changes and i couldn't execute old .sh scripts,that is why i split installation scripts like `Install-1.sh` `Install-2.sh` `Install-3.sh`.Still trying to fix this issue (Your supports kindly accepted ^^).Beside from that my project is still `Fully` in testing phase,it is not completed yet.

## Installation

You can execute scripts step by step `sudo bash 2.2.Host-System-Requirements.sh` `sudo bash 2.4.Creating-a-New-Partition.sh` or you can execute all of them in once `sudo bash Install-1.sh` `sudo bash Install-2.sh` `sudo bash Install-3.sh` (My personal suggestion is execute bash scripts in root)