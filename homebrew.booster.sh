#!/bin/bash
#-------------------------------------------------------------------------------
# homebrew.booster.sh (for MacOS)
#-------------------------------------------------------------------------------
# Revision: Mon Nov 18, 2019
#-------------------------------------------------------------------------------
# Description
# -----------
# This script assists the user in setting up a GNU-Unix-like environment that
# more closely matches GNU Linux and GNU Cygwin environments.
#
# This script will back up and auto-configure a MacOS environment to behave like
# a GNU-Unix environment.
#
# It uses Git, Homebrew, and the HTK to do this.
#
# -bkh
#-------------------------------------------------------------------------------


#globvars-----------------------------------------------------------------------
dn=/dev/null
HB_CLI_CASKS=(iterm2)
HB_GNU_FORMULAS=(coreutils findutils gnu-sed gnu-tar man-db pstree rsync telnet
                 tree util-linux vim watch xz)
HB_DEVOPS_TOOLS=(ansible awscli docker dos2unix freerdp openssh sshfs terraform
                 terraform-docs)
HB_SECURITY_TOOLS=(clamav lynis p7zip openssl pwgen rdesktop yara)

#funcs--------------------------------------------------------------------------
brew_install_casks (){
   #Takes 1-N args:     Args 1-N are names of brew casks to install
   #NOTE: Homebrew 'casks' are pre-compiled binary packages, that don't
   #      necessarily have their source code in Homebrew, but use it as a
   #      package management system for Mac.
   #
   for pkg in $@ ; do
      echo "-------------------------------------------------"
      echo "Installing Homebrew 'cask' (binary) package: $pkg"
      echo "-------------------------------------------------"
      brew cask install $pkg
      echo
      echo
   done
}
brew_install_formulas (){
   #Takes 1-N args:     Args 1-N are names of brew formulas to install
   #NOTE: Homebrew 'formulae' are standard open source packages that are
   #      distributed through the Homebrew package manager.
   #
   for pkg in $@ ; do
      echo "--------------------------------------------"
      echo "Installing Homebrew 'formulae' package: $pkg"
      echo "--------------------------------------------"
      brew install $pkg
      echo
      echo
   done
}
configure_bash_shell_settings_for_maximum_efficiency (){
   #Back up old configuration files
   tell_us_what_you_do
   for x in /Users/$USER/.bashrc \
            /Users/$USER/.bash_profile \
            /etc/profile               \
            /etc/bashrc                \
            /etc/bash.bashrc.local
   do
      if [ -e $x.bak ] ; then 
         true
      else
         cp -i $x $x.bak
      fi
   done
   #
   append_to__user__dot_bashrc
   append_to__user__dot_bash_profile
   append_to__system__etc_profile
   append_to__etc__bashrc
   append_to__etc__bash_bashrc_local
}
create_critical_fileystem_links_for_user_efficiency (){
   #Takes no args.
   #Creates user-friendly sym-links for typical (unix-like) directory structure
   #
   tell_us_what_you_do
   sudo ln  -s  /private/etc       /etc         2>$dn
   sudo ln  -s  /private/var/root  /root        2>$dn
   sudo ln  -s  /private/tmp       /tmp         2>$dn
   sudo ln  -s  /Users/$USER       /home/$USER  2>$dn
}
install_key_DevOps_tools (){
   tell_us_what_you_do
   brew_install_formulas ${HB_DEVOPS_TOOLS[@]}
   echo
   echo
}
install_open_source_security_tools (){
   tell_us_what_you_do
   brew_install_formulas ${HB_SECURITY_TOOLS[@]}
   echo
   echo
}
install_standard_GNU_CLI_environment_tools (){
   tell_us_what_you_do
   brew_install_casks ${HB_CLI_CASKS[@]}
   brew_install_formulas ${HB_GNU_FORMULAS[@]}
   echo
   echo
}
make_sure__git__is_installed__or__exit (){
   if type git ; then
      true
   else
      EE=04
      echo "Error $EE: Git is not installed."
      echo
      echo "Please install (brew install git) to continue."
      echo
      echo "Exiting (until Git is installed)..."
   fi
}
make_sure__homebrew__is_installed__or__exit (){
   if type brew ; then
      true
   else
      EE=03
      echo "Error $EE: Homebrew is not installed."
      echo
      echo "Please install Homebrew (https://brew.sh) to continue."
      echo
      echo "Exiting (until Homebrew is installed)..."
   fi
}
make_sure_script_is__NOT__executed_via_root__or__exit (){
   tell_us_what_you_do
   if [ -v SUDO_USER ] ; then
      EE=01
      echo "Error $EE: Script must not be executed via the 'sudo' command."
      echo "Exiting..."
      exit
   elif [ $UID = 0 ] ; then
      EE=02
      echo "Error $EE: Script must not be executed as the 'root' user."
      echo "Exiting..."
      exit

   else
      true
   fi
}
append_to__etc__bash_bashrc_local (){
   #Takes no args.
   local PEBBRCL=/private/etc/bash.bashrc.local
   #
   #The following blurb is BKH example setting for /etc/bash.bashrc.local
   #(i.e. HTK 'Plush')
   #
   #(it can be decoded in Vim with:
   # 1. Higlight the blurb.
   #
   # 2. Then enter the command: !/usr/bin/base64 -D|zcat
   /usr/bin/base64 -D | zcat >> $PEBBRCL <<"EO_append_to__system__etc_bash_bashrc_local"
H4sIAGdT010AA32QMU/DMBCFd/+Kp6RqYUiqriAGBkQHqkZJEQNBlXHP2KpjV7ZLlP56HNoFhJhu
eO/uffdyNEOI1BW93hHKdx6UF5DaEKTz0DaS5yLqT8KoXS2uERQZE0qmJV5RnJBNqmaR4e0WUZFl
ADzFo7dMasaSdDdr1U37gvbYTjBjOVZ8f74GoUjsoWNAr+3O9Qj6ROAyhYLj4J2gECBcdzAUKbCg
3CGiCOfFtDP6GUsYHtmcopifH9hONg/1alvV68f6fpXYMJ2i/M/CWL5ROsBoS0jT0hjN/YDo0I3A
y6EiL1E9PTdL9M7vvwsy7kPbSyVwNv0m1k35m+jSa2mc4OYPnJ86+wJat8wrlQEAAA==
EO_append_to__system__etc_bash_bashrc_local
   sudo chown root.wheel $PEBBRCL
   sudo chmod 0644       $PEBBRCL
}
append_to__etc__bashrc (){
   #Takes no args.
   local PEBRC=/private/etc/bashrc
   #
   #The following blurb is BKH example setting for /etc/bashrc
   #(it can be decoded in Vim with:
   # 1. Higlight the blurb.
   #
   # 2. Then enter the command: !/usr/bin/base64 -D|zcat
   /usr/bin/base64 -D | zcat >> $PEBRC <<"EO_append_to__system__etc_bashrc"
H4sIAGdT010AA32QMU/DMBCFd/+Kp6RqYUiqriAGBkQHqkZJEQNBlXHP2KpjV7ZLlP56HNoFhJhu
eO/uffdyNEOI1BW93hHKdx6UF5DaEKTz0DaS5yLqT8KoXS2uERQZE0qmJV5RnJBNqmaR4e0WUZFl
ADzFo7dMasaSdDdr1U37gvbYTjBjOVZ8f74GoUjsoWNAr+3O9Qj6ROAyhYLj4J2gECBcdzAUKbCg
3CGiCOfFtDP6GUsYHtmcopifH9hONg/1alvV68f6fpXYMJ2i/M/CWL5ROsBoS0jT0hjN/YDo0I3A
y6EiL1E9PTdL9M7vvwsy7kPbSyVwNv0m1k35m+jSa2mc4OYPnJ86+wJat8wrlQEAAA==
EO_append_to__system__etc_bashrc
   sudo chown root.wheel $PEBRC
   sudo chmod 0644       $PEBRC

}
append_to__user__dot_bash_profile (){
   #Takes no args.
   local UDBP=/Users/$USER/.bash_profile
   echo "source ~/.bashrc" > $UDBP
   sudo chown $USER $UDBP
   sudo chmod 0644  $UDBP
}
append_to__user__dot_bashrc (){
   #Takes no args.
   local UDBRC=/Users/$USER/.bashrc
   #
   #The following blurb is BKH example setting for ~/.bashrc
   #(it can be decoded in Vim with:
   # 1. Higlight the blurb.
   #
   # 2. Then enter the command: !/usr/bin/base64 -D|zcat
   /usr/bin/base64 -D | zcat >> $UDBRC <<"EO_append_to__user__dot_bashrc"
H4sIAHlP010AA61VbW/bNhD+rl9xkJXG7ioTdbEBreGhWZrOBdLWiJMCxTQMNHWyOFGiQlKxvab9
7TvKb0WbBEk3GpAo3j33wnvu3BmvJmgymJxeTMdg0TlZzYNOfNMK/oDYQMjQCTbjNu/7hxF9pQVX
IfwJjx5B/1Z5YHVjBAK74oYpOWP5qibP7TYziIJXlo0/Tk7OXvd/O5qOz477Ng+CzskSReOkrmBy
dD6eQqYN/P7uIj6VVbMEp7WyQad7nqPFjUaFmJIAZgiyglpx8kqfJS/onaNHw/HpG1hoU4DQxqBw
atW7JeuHrQCXtTYO2lBGIWssJevzZ7p2jJwh5aKszxopMTavmpmsXkRePbwb7IGx8lmz+0LIeuzW
1/1Qbx5qMf0RaCar9IezLHkVp7Md8r4wT7V7K+saK/sA/StZ3qArmtlVOmIftGpKtOyYXVg0lkUX
05MzIvnc8MqxlDtOwYmiqS0jNk91iTAr8tjWKGQmxbbnLHSFLkusHOjGgcxgpRtIdXXoQMkC/xM9
yS86sDkq1TK/NrqsXSA49UzUXeSal7JHzRIAgNHa9WAyfTpKkvxFkiwS6CQwHHrZ428EUStAy0XA
leQWiuejsJDkJX4OB0/DoNIO7egLKxDrfsraz6BTZoIu7q45UHJB6ndoBK9OX+3tKj3vp5sQUi7V
ig5GYVmIFCJSHAJVkBKlYiD8dPDxoDxIe2Hw9ujNuw9vJ+/PzkfPng0GG/zfxIxRSA+IBxAL4GgH
P/8SC2cgriHag8IdQNQEEPUNgMlNgMu1C/+ElmS5tm4rNF9LfS1efqfidKpH4TbPkFhFhIIdoeju
tN0OxlsZsTB1Cd3eJ1/WDpzTbLTAPRlBZ+CZyKvUPqGDmhu6thRmK1jkkupX0zx9AhQHN/PGE9a2
NroulxauqAX8rKbtNiCu1Kqd2m1gPa/sv1Z+OEcvYUgk92eb42V73HVUcog5XfjquqnkZe8rNVru
r7ZRo+X+iDoGRa4hWsuu5wapIpfwTTOH5JD+BKo9kFYLzKk1ZwYXkMT0+3VniKYgHFqWeDvJ2lDi
LSWMsfnQC/qPI9oe7k2iuk80NFL+p2jI0p3RWPzeQV3MZbqz3qVPP7MhjjOpMJZVpndloCose+sU
WtQ1XxQQfqqNpGmVRIPPYW9vP5ObPc2u1q1/wzU4PlPyHzTB5+0AjTPwLAz+BdCf/G2ECAAA
EO_append_to__user__dot_bashrc
   sudo chown $USER $UDBRC
   sudo chmod 0644  $UDBRC
}
append_to__system__etc_profile (){
   #Takes no args.
   local PEP=/private/etc/profile
   #
   #The following blurb is BKH example setting for /etc/profile
   #(it can be decoded in Vim with:
   # 1. Higlight the blurb.
   #
   # 2. Then enter the command: !/usr/bin/base64 -D|zcat
   /usr/bin/base64 -D | zcat >> $PEP <<"EO_append_to__system__etc_profile"
H4sIAO9R010AA3XNsQrCMBSF4dk8xTFK0SENztJBJ/eOUmwab0ggNiWJWhHfXQVBF9fDz3dmqG8p
00lc3ZFQDjEY5wkmRCS7WC0ZcwZ7iBHynKL0rqORtBxUtgdLfqCIZo1sqWcTuiiP9m8nUsuM+4B8
ft9u6p3ow4NjWoH3gX+l12GEpKxlp5KNGg2KAuXv9KaeTnzwZL0AAAA=
EO_append_to__system__etc_profile
   sudo chown root.wheel $PEP
   sudo chmod 0644       $PEP
}
tell_us_what_you_do (){
   local LINE="$(echo ${FUNCNAME[1]}|tr '_' ' ')"
   echo "$LINE"|sed 's/^\(.\)/\U\1/g;s/$/./g;s/./-/g'
   echo "$LINE"|sed 's/^\(.\)/\U\1/g;s/$/./g'
   echo "$LINE"|sed 's/^\(.\)/\U\1/g;s/$/./g;s/./-/g'
}
turn_off_questionable___automount_of_home_directory___feature (){
   #Takes no args.
   #This makes it so '/home/' can be sym-linked and used, the way it would be
   #used in a standard Unix environment.
   local AM=/private/etc/auto_master
   #
   tell_us_what_you_do
   #
   #Back up the auto_master settings.
   sudo cp  $AM  $AM.bak
   #
   #Comment out the setting in the auto_master file
   sudo sed 's/^\#\/home\(  \)*auto_home/\/home\1auto_home/g' -i $AM
   #
   #Cause the automounter daemon to re-read the auto_master config file
   sudo automount -vc
}
use_git_to_install_the_htk (){
   #Takes no args.
   #Installs the HyPerf ToolKit (HTK) 
   tell_us_what_you_do
   pushd /var/tmp
   git clone https://github.com/dabronc/hyperf
   pushd hyperf
   #Perform a standard, full, Mobile_Home style auto-installation of the HTK.
   sudo bash htk.sh --mhcli
   popd
   popd
}

#main---------------------------------------------------------------------------
#Verify environment is ready
make_sure_script_is__NOT__executed_via_root__or__exit
make_sure__homebrew__is_installed__or__exit
make_sure__git__is_installed__or__exit
#
#Install software
install_standard_GNU_CLI_environment_tools
install_key_DevOps_tools
install_open_source_security_tools
#
#Auto-configure the GNU-Unix-like (i.e GNU-Linux) environment
turn_off_questionable___automount_of_home_directory___feature
create_critical_fileystem_links_for_user_efficiency
use_git_to_install_the_htk
configure_bash_shell_settings_for_maximum_efficiency

exit
