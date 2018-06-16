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
function B
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
function TT
{
	echo -e ""$YS"if"$CE") Ifconfig           "$YS"l"$CE") Local IPs & gateways "$RS"|"$CE"  "$YS"scan"$CE") Arp-scan network"
	if [[ "$WLANCHECKING" = "" ]]
	then
		echo -e ""$RS" 1"$CE") Enable "$RS"$WLANN"$CE"${SPACESN}"$RS"d1"$CE") Disable "$RS"$WLANN"$CE"${SPACESN}  "$RS"|"$CE" "$YS"start"$CE") Start monitor mode"
		echo -e ""$RS" 2"$CE") Enable "$RS"$WLANNM"$CE"${SPACESM}"$RS"d2"$CE") Disable "$RS"$WLANNM"$CE"${SPACESM}  "$RS"|"$CE"  "$YS"stop"$CE") Stop monitor mode"
	else
		echo -e ""$YS" 1"$CE") Enable $WLANN${SPACESN}"$YS"d1"$CE") Disable $WLANN${SPACESN}  "$RS"|"$CE" "$YS"start"$CE") Start monitor mode"
		echo -e ""$YS" 2"$CE") Enable $WLANNM${SPACESM}"$YS"d2"$CE") Disable $WLANNM${SPACESM}  "$RS"|"$CE"  "$YS"stop"$CE") Stop monitor mode"
	fi
	echo -e ""$YS" 3"$CE") Change MAC        "$YS"d3"$CE") Restore original MAC "$RS"|"$CE""$YS"update"$CE") Check for updates"
	if [[ -f /usr/bin/anonym8 ]]
	then
	echo -e ""$YS" 4"$CE") Enable anonym8    "$YS"d4"$CE") Disable anonym8      "$RS"|"$CE""$YS"errors"$CE") Fix some errors"
	else
	echo -e ""$RS" 4"$CE") Enable anonym8    "$RS"d4"$CE") Disable anonym8      "$RS"|"$CE""$YS"errors"$CE") Fix some errors"
	fi
	if [[ -f /usr/bin/anonsurf ]]
	then
	echo -e ""$YS" 5"$CE") Enable anonsurf   "$YS"d5"$CE") Disable anonsurf     "$RS"|"$CE"    "$YS"ks"$CE") Keyboard shortucts"
	echo -e ""$YS" 6"$CE") Anonsurf's status "$YS"d6"$CE") Restart anonsurf     "$RS"|"$CE""$YS"     d"$CE") Buy me a coffee"
	else
	echo -e ""$RS" 5"$CE") Enable anonsurf   "$RS"d5"$CE") Disable anonsurf     "$RS"|"$CE"    "$YS"ks"$CE") Keyboard shortucts"
	echo -e ""$RS" 6"$CE") Anonsurf's status "$RS"d6"$CE") Restart anonsurf     "$RS"|"$CE"     "$YS"d"$CE") Buy me a coffee"
	fi
	echo -e ""$YS" 7"$CE") View public IP                             "$RS"|"$CE"     "$YS"s"$CE") Go to settings menu"
	echo -e ""$YS" 8"$CE") View MAC"
	echo -e ""$YS" 9"$CE") TOOLS             "$YS"15"$CE") Spoof EMAIL           "$YS"22"$CE") Show bandwidth"
	if [[ -f /root/ngrok ]]
	then
		echo -e ""$YS"10"$CE") Handshake         "$YS"16"$CE") Ngrok port forward"
	else
		echo -e ""$YS"10"$CE") Handshake         "$RS"16"$CE") "$RS"Ngrok"$CE" port forward"
	fi
	if [[ -f /usr/local/bin/howdoi ]]
	then
		echo -e ""$YS"11"$CE") Find WPS pin      "$YS"17"$CE") Ask (Howdoi tool)"
	else
		echo -e ""$YS"11"$CE") Find WPS pin      "$RS"17"$CE") Ask ("$RS"Howdoi"$CE" tool)"
	fi
	echo -e ""$YS"12"$CE") WEP menu          "$YS"18"$CE") Auto-exploit browser"
	echo -e ""$YS"13"$CE") MITM              "$YS"19"$CE") Geolocate an IP"
	echo -e ""$YS"14"$CE") Metasploit        "$YS"20"$CE") Bruteforce login"   
	echo -e ""$YS" 0"$CE") Exit              "$YS"21"$CE") Sqlmap automated"
	echo "Choose: "
	read -e YORNAA
	#~ echo "$YORNNA"
	#~ history -s "$YORNNA"
	clear
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
TT