#!/bin/bash

echo ""
echo "----------- 7.6.Configuring-the-Linux-Console.sh -----------"
echo ""

#This section discusses how to configure the systemd-vconsole-setup system service, which configures the virtual console font and console keymap.

#The systemd-vconsole-setup service reads the /etc/vconsole.conf file for configuration information. Decide which keymap and screen font will be used. Various language-specific HOWTOs can also help with this, see http://www.tldp.org/HOWTO/HOWTO-INDEX/other-lang.html. Examine localectl list-keymaps output for a list of valid console keymaps. Look in /usr/share/consolefonts directory for valid screen fonts.

#The /etc/vconsole.conf file should contain lines of the form: VARIABLE="value". The following variables are recognized:

#KEYMAP
#This variable specifies the key mapping table for the keyboard. If unset, it defaults to us.

#KEYMAP_TOGGLE
#This variable can be used to configure a second toggle keymap and is unset by default.

#FONT
#This variable specifies the font used by the virtual console.

#FONT_MAP
#This variable specifies the console map to be used.

#FONT_UNIMAP
#This variable specifies the Unicode font map.

########################################################################################################################
#An example for a United States keyboard and console is given below:

cat > /etc/vconsole.conf << "EOF"
KEYMAP=us
FONT=Lat2-Terminus16
EOF
########################################################################################################################
#You can change KEYMAP value at runtime by using the localectl utility:

#localectl set-keymap MAP
#Note
#Please note that the localectl command can be used only on a system booted with systemd.
########################################################################################################################
#You can also use localectl utility with the corresponding parameters to change X11 keyboard layout, model, variant and options:

#localectl set-x11-keymap LAYOUT [MODEL] [VARIANT] [OPTIONS]
#To list possible values for localectl set-x11-keymap parameters, run localectl with parameters listed below:

#list-x11-keymap-models
#Show known X11 keyboard mapping models.

#list-x11-keymap-layouts
#Show known X11 keyboard mapping layouts.

#list-x11-keymap-variants
#Show known X11 keyboard mapping variants.

#list-x11-keymap-options
#Show known X11 keyboard mapping options.

#Note
#Using any of the parameters listed above requires the XKeyboard Config package from BLFS.