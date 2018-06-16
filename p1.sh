#! /bin/bash
#--------Created by-Sna Team---------
#VERSION=0.1
#--------------COLORS-----------------
#red start
RD="\e[1;31m"
#black start
BL="\e[0;30m"
#white start
WH="\e[1;37m"
#green start
GN="\e[0;32m"
#light green start
LG="\e[1;32m"
#cyan start
CY="\e[0;36m"
#light cyan start
LC="\e[1;36m"
#yellow start
YL="\e[1;33m"
#light yellow start
LY="\e[0;33m"
#end
EN="\e[0m"
#---------------KEYS-----------------
K="Press "$WH"any key$EN to start..."
K1="Press "$WH"any key$EN to continue..."
K2="Press "$WH"any key$EN to go back..."
#--------------Any-key----------------
R1="read -n 1"
#---------------YesOrNo---------------
YS="("$YL"y"$EN"/"$YL"n"$EN")("$YL"Enter"$EN"=yes)"
YN="("$YL"y"$EN"/"$YL"n"$EN")("$YL"Enter"$EN"=no)"
YNO="("$YL"y"$EN"/"$YL"n"$EN")"
################FUNCTIONS##############
function dependences
{
#--------------PACKAGES-----------------
	who=`whoami`
	sleep 0.25
	echo -e $RD"[!]:"$YL"Required Packages:"
	sleep 2
	echo
	#--------------ROOT------------------
	echo -ne -e $WH"[!]$WH:Checking root..."
	if [ "$who" == "root" ]; then echo -e $GN"[Found]"
else echo -e $RD"[Not Found]"
	sleep 2
	clear
	echo -e $YL"Necessary root"
fi
sleep 0.55
#-------------ANONSURF------------------
echo -ne -e $WH"[!]:Searching anonsurf..."
if ! hash anonsurf 2>/dev/null; then echo -e $RD"[Not Found]"
apt-get update
cd
git clone https://github.com/Und3rf10w/kali-anonsurf.git
cd kali-anonsurf
sudo ./installer.sh
echo
echo
K1
R1
clear
sleep 1
else echo -e $GN"[Found]"
	fi
	sleep 0.25
################BANNER#################
}
function banner
{
check_wlans
echo -e ""
echo -e $WH"       █████╗ ██╗███╗   ██╗           "$WH" ██╗"
echo -e $WH"      ██╔══██╗██║████╗  ██║           "$WH"███║"
echo -e $WH"      ███████║██║██╔██╗ ██║"$RD"█████╗"$WH" ██║"
echo -e $WH"      ██║  ██║██║██║ ╚████║           "$WH" ██║"
echo -e $WH"      ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝           "$WH" ╚═╝"
echo -e ""
}
#---------------OPTIONS------------------
function OP
{
	echo -e $WH"Do you want to use anonsurf to start using it with the tool?-[y/n]"
	echo
	read -p "@ain:~#" resp
	[ "$resp" = "y" ]; then  anonsurf start;clear
	if [ "$resp" = "n" ]; then clear 
}
###############AIN-1##################
clear
dependences
K
clear
sleep 0.50
banner
K1
OP
sleep 0.25
K1
clear