#! /bin/bash
######COLOR#######
#–------WHITE--------
WH="\e[1;37m"
#--------END----------
EN="\e[1;37m" 
#------INSTALER-------
clear
printf '\033]2;INSTALLER\a'
echo
echo -e "Press "$WH"any key$EN to install the script..."
read -n 1
clear
IR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$IR" != "/root/Ain-1" ]]
then
	echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
	sleep 3
	if [[ -d /root/Ain-1 ]]
	then
		rm -r /root/Ain-1
	fi
	mkdir /root/Ain-1
	cp -r "$IR"/* /root/Ain-1
	chmod +x /root/Ain-1/install.sh
	gnome-terminal -e "bash /root/Ain-1/install.sh"
fi
echo -e "Installing Ain-1..."
sleep 1
echo -e "Press "$WH"any key$EN to continue..."
read -n 1
sleep 2
chmod +x /root/Ain-1/ain-1.sh
clear
