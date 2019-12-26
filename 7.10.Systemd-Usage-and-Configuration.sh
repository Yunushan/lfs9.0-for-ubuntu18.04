#!/bin/bash

echo ""
echo "----------- 7.10.Systemd-Usage-and-Configuration.sh -----------"
echo ""

#7.10.1. Basic Configuration
#The /etc/systemd/system.conf file contains a set of options to control basic systemd operations. The default file has all entries commented out with the default settings indicated. This file is where the log level may be changed as well as some basic logging settings. See the systemd-system.conf(5) manual page for details on each configuration option.

#7.10.2. Disabling Screen Clearing at Boot Time
#The normal behavior for systemd is to clear the screen at the end of the boot sequence. If desired, this behavior may be changed by running the following command:

mkdir -pv /etc/systemd/system/getty@tty1.service.d

cat > /etc/systemd/system/getty@tty1.service.d/noclear.conf << EOF
[Service]
TTYVTDisallocate=no
EOF
#The boot messages can always be reviewed by using the journalctl -b command as the root user.

#7.10.3. Disabling tmpfs for /tmp
#By default, /tmp is created as a tmpfs. If this is not desired, it can be overridden by the following:

#ln -sfv /dev/null /etc/systemd/system/tmp.mount
#Alternatively, if a a separate partition for /tmp is desired, specify that partition in an /etc/fstab entry.

#Warning
#Do not create the symbolic link above if a separate partition is used for /tmp. This will prevent the root file system (/) from being remounted r/w and make the system unusable when booted.

#7.10.4. Configuring Automatic File Creation and Deletion
#There are several services that create or delete files or directories:

#systemd-tmpfiles-clean.service

#systemd-tmpfiles-setup-dev.service

#systemd-tmpfiles-setup.service

#The system location for the configuration files is /usr/lib/tmpfiles.d/*.conf. The local configuration files are in /etc/tmpfiles.d. Files in /etc/tmpfiles.d override files with the same name in /usr/lib/tmpfiles.d. See tmpfiles.d(5) manual page for file format details.

#Note that the syntax for the /usr/lib/tmpfiles.d/*.conf files can be confusing. For example, the default deletion of files in the /tmp directory is located in /usr/lib/tmpfiles.d/tmp.conf with the line:

#q /tmp 1777 root root 10d
#The type field, q, discusses creating a subvolume with quotas which is really only applicable to btrfs filesystems. It references type v which in turn references type d (directory). This then creates the specified directory if is is not present and adjusts the permissions and ownership as specified. Contents of the directory will be subject to time based cleanup if the age argument is specified.

#If the default parameters are not desired, then the file should be copied to /etc/tmpfiles.d and edited as desired. For example:

#mkdir -p /etc/tmpfiles.d
#cp /usr/lib/tmpfiles.d/tmp.conf /etc/tmpfiles.d
#7.10.5. Overriding Default Services Behavior
#The parameter of a unit can be overriden by creating a directory and a configuration file in /etc/systemd/system. For example:

#mkdir -pv /etc/systemd/system/foobar.service.d

#cat > /etc/systemd/system/foobar.service.d/foobar.conf << EOF
#[Service]
#Restart=always
#RestartSec=30
#EOF
#See systemd.unit(5) manual page for more information. After creating the configuration file, run systemctl daemon-reload and systemctl restart foobar to activate the changes to a service.

#7.10.6. Debugging the Boot Sequence
#Rather than plain shell scripts used in SysVinit or BSD style init systems, systemd uses a unified format for different types of startup files (or units). The command systemctl is used to enable, disable, control state, and obtain status of unit files. Here are some examples of frequently used commands:

#systemctl list-units -t <service> [--all]: lists loaded unit files of type service.

#systemctl list-units -t <target> [--all]: lists loaded unit files of type target.

#systemctl show -p Wants <multi-user.target>: shows all units that depend on the multi-user target. Targets are special unit files that are anogalous to runlevels under SysVinit.

#systemctl status <servicename.service>: shows the status of the servicename service. The .service extension can be omitted if there are no other unit files with the same name, such as .socket files (which create a listening socket that provides similar functionality to inetd/xinetd).

#7.10.7. Working with the Systemd Journal
#Logging on a system booted with systemd is handled with systemd-journald (by default), rather than a typical unix syslog daemon. You can also add a normal syslog daemon and have both work side by side if desired. The systemd-journald program stores journal entries in a binary format rather than a plain text log file. To assist with parsing the file, the command journalctl is provided. Here are some examples of frequently used commands:

#journalctl -r: shows all contents of the journal in reverse chronological order.

#journalctl -u UNIT: shows the journal entries associated with the specified UNIT file.

#journalctl -b[=ID] -r: shows the journal entries since last successful boot (or for boot ID) in reverse chronological order.

#journalctl -f: povides functionality similar to tail -f (follow).

#7.10.8. Long Running Processes
#Beginning with systemd-230, all user processes are killed when a user session is ended, even if nohup is used, or the process uses the daemon() or setsid() functions. This is a deliberate change from a historically permissive environment to a more restrictive one. The new behavior may cause issues if you depend on long running programs (e.g., screen or tmux) to remain active after ending your user session. There are three ways to enable lingering processes to remain after a user session is ended.

#Enable process lingering for only selected users: Normal users have permission to enable process lingering with the command loginctl enable-linger for their own user. System administrators can use the same command with a user argument to enable for a user. That user can then use the systemd-run command to start long running processes. For example: systemd-run --scope --user /usr/bin/screen. If you enable lingering for your user, the user@.service will remain even after all login sessions are closed, and will automatically start at system boot. This has the advantage of explicitly allowing and disallowing processes to run after the user session has ended, but breaks backwards compatibility with tools like nohup and utilities that use deamon().

#Enable system-wide process lingering: You can set KillUserProcesses=no in /etc/logind.conf to enable process lingering globally for all users. This has the benefit of leaving the old method available to all users at the expense of explicit control.

#Disable at build-time: You can enable lingering by default while building systemd by adding the switch -Ddefault-kill-user-processes=no to the meson command for systemd. This completely disables the ability of systemd to kill user processes at session end.