#!/bin/bash

echo ""
echo "----------- 7.5.Configuring-the-system clock.sh -----------"
echo ""

#This section discusses how to configure the systemd-timedated system service, which configures system clock and timezone.

#If you cannot remember whether or not the hardware clock is set to UTC, find out by running the hwclock --localtime --show command. 

#This will display what the current time is according to the hardware clock. 

#If this time matches whatever your watch says, then the hardware clock is set to local time.

#If the output from hwclock is not local time, chances are it is set to UTC time. 

#Verify this by adding or subtracting the proper amount of hours for the timezone to the time shown by hwclock.

#For example, if you are currently in the MST timezone, which is also known as GMT -0700, add seven hours to the local time.

#systemd-timedated reads /etc/adjtime, and depending on the contents of the file, it sets the clock to either UTC or local time.

#Create the /etc/adjtime file with the following contents if your hardware clock is set to local time:

############################################################
#cat > /etc/adjtime << "EOF"
#0.0 0 0.0
#0
#LOCAL
#EOF
############################################################

#If /etc/adjtime isn't present at first boot, systemd-timedated will assume that hardware clock is set to UTC and adjust the file according to that.

#You can also use the timedatectl utility to tell systemd-timedated if your hardware clock is set to UTC or local time:

############################################################
#timedatectl set-local-rtc 1
############################################################

#timedatectl can also be used to change system time and time zone.

############################################################
#To change your current system time, issue:
#timedatectl set-time YYYY-MM-DD HH:MM:SS
############################################################

#Hardware clock will also be updated accordingly.

############################################################
#To change your current time zone, issue:
#timedatectl set-timezone UTC #Location is changible


#ZONES="$(timedatectl list-timezones)"

#for ZONE in $ZONES
#do
#    OFFSET="$(env TZ=${ZONE} date +%:z)"
#    echo "$ZONE $OFFSET"
#done

#printf "\nBy default i define time zone as 'UTC'\nPlease write your location eg. 'Europe/Paris'  
#(You can scrool down/up in terminal via shift + page up/page down or Ctrl + Shift up/down arrow )\n\nYour location:"
#read timezone

#timedatectl set-timezone $timezone
#printf "Selected timezone is $timezone\n"
#timedatectl
#sleep 2
############################################################

############################################################
#You can get a list of available time zones by running:
#timedatectl list-timezones
############################################################

#Note
#Please note that the timedatectl command can be used only on a system booted with systemd.

#7.5.1. Network Time Synchronization
#Starting with version 213, systemd ships a daemon called systemd-timesyncd which can be used to synchronize the system time with remote NTP servers.

#The daemon is not intended as a replacement for the well established NTP daemon, but as a client only implementation of the SNTP protocol which can be used for less advanced tasks and on resource limited systems.

#Starting with systemd version 216, the systemd-timesyncd daemon is enabled by default. If you want to disable it, issue the following command:

############################################################
#systemctl disable systemd-timesyncd
############################################################

#The /etc/systemd/timesyncd.conf file can be used to change the NTP servers that systemd-timesyncd synchronizes with.

#Please note that when system clock is set to Local Time, systemd-timesyncd won't update hardware clock.