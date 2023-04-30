#!/bin/bash

# Working directory
directory=$(pwd)

# Get username
user=$(whoami)

# Colors
Black='\033[1;30m'        # Black
Red='\033[1;31m'          # Red
Green='\033[1;32m'        # Green
Yellow='\033[1;33m'       # Yellow
Blue='\033[1;34m'         # Blue
Purple='\033[1;35m'       # Purple
Cyan='\033[1;36m'         # Cyan
White='\033[1;37m'        # White
NC='\033[0m'
blue='\033[0;34m'
white='\033[0;37m'
lred='\033[0;31m'


# Presentation of the script
banner () {
echo -e "${Red}  ╔──────────────────────────────────╗			"
echo -e "${Red}  |				     |			"
echo -e "${Red}  |${Green} ██████╗ ███████╗██████╗  ██████╗${Red} | 	"
echo -e "${Red}  |${Green} ██╔══██╗██╔════╝██╔══██╗██╔════╝${Red} |	"
echo -e "${Red}  |${Green} ██████╔╝███████╗██████╔╝██║     ${Red} | 	"
echo -e "${Red}  |${Green} ██╔══██╗╚════██║██╔═══╝ ██║     ${Red} |	"
echo -e "${Red}  |${Green} ██████╔╝███████║██║     ╚██████╗${Red} |      "
echo -e "${Red}  |${Green} ╚═════╝ ╚══════╝╚═╝      ╚═════╝${Red} |	"
echo -e "${Red}  |${White} 	        ______	  ${Red} 	     |	"
echo -e "${Red}  |${White} 	     .-        -.  ${Red}          |	"
echo -e "${Red}  |${White} 	    /            \ ${Red}          |	"
echo -e "${Red}  |${White} 	   |              |${Red} 	     |	"
echo -e "${Red}  |${White} 	   |,  .-.  .-.  ,|${Red} 	     |	"
echo -e "${Red}  |${White}	   | )(__/  \__)( |${Red} 	     |	"
echo -e "${Red}  |${White}	   |/     /\     \|${Red}	     |	"
echo -e "${Red}  |${White}	   (_     ^^     _)${Red} 	     |   "
echo -e "${Red}  |${White}	    \__|IIIIII|__/ ${Red} 	     |	"
echo -e "${Red}  |${White}	     | \IIIIII/ |  ${Red} 	     |	"
echo -e "${Red}  |${White}	     \          /  ${Red}          |	"
echo -e "${Red}  |${White}	      \ ────── / ${Red} 	     |	"
echo -e "${Red}  |				     |			"
echo -e "${Red}  ┖──────────────────────────────────┙			"
}


# The main menu
bspc () {
echo ""
clear
banner
echo ""
echo -e "${White} [${Yellow}1${White}] File Browser		${White}[${Yellow}4${White}] Manage network"
echo -e "${White} [${Yellow}2${White}] Configure bspwm		${White}[${Yellow}5${White}] Github projects"
echo -e "${White} [${Yellow}3${White}] Terminal applications	${White}[${Yellow}6${White}] Update system"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read shw

case $shw in

1)
ranger
bspc ;;

2)
bspwmfiles ;;

3)
apps ;;

4)
network ;;

5)
alvinpixgit ;;

6)
updates ;;

* )
echo -e "${White} [The option is not valid please choose a number]"
sleep 1
bspc ;;
esac
}

# The bspwm config files
bspwmfiles () {
echo ""
echo -e "${White} [${Yellow}1${White}] .config/bspwm/bspwmrc"
echo -e "${White} [${Yellow}2${White}] .config/sxhkd/sxhkdrc"
echo -e "${White} [${Yellow}3${White}] .config/picom/picom.conf"
echo -e "${White} [${Yellow}4${White}] .config/kitty/kitty.conf"
echo ""
echo -e "${White} [${Yellow}r${White}] Return to main menu"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read configure

case $configure in

1)
nano /home/${user}/.config/bspwm/bspwmrc
bspc ;;

2)
nano /home/${user}/.config/sxhkd/sxhkdrc
bspc ;;

3)
nano /home/${user}/.config/picom/picom.conf
bspc ;;

4)
nano /home/${user}/.config/kitty/kitty.conf
bspc ;;

r)
bspc ;;

* )
echo -e "${White} [The option is not valid please choose a number or letters]"
sleep 1
bspc ;;
esac
}


# Apps bspc
apps () {
echo ""
echo -e "${White} [${Yellow}1${White}] neofetch"
echo -e "${White} [${Yellow}2${White}] cava"
echo -e "${White} [${Yellow}3${White}] htop"
echo -e "${White} [${Yellow}4${White}] pipes"
echo -e "${White} [${Yellow}5${White}] cmatrix"
echo ""
echo -e "${White} [${Yellow}r${White}] Return to main menu"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read app

case $app in

1)
neofetch
echo -ne "${White} [Press any key to continue]..."
read
bspc ;;

2)
cava
bspc ;;

3)
htop
bspc ;;

4)
cd /home/alvinpix/Escritorio/PX-games/Github/pipes.sh
./pipes.sh -t 9
bspc ;;

5)
cmatrix
bspc ;;

r)
bspc ;;

* )
echo -e "${White} [The option is not valid please choose a number or letters]"
sleep 1
bspc ;;
esac
}


# Network manager bspc
network () {
echo ""
echo -e "${White} [${Yellow}1${White}] Disable network"
echo -e "${White} [${Yellow}2${White}] Enable network"
echo ""
echo -e "${White} [${Yellow}3${White}] Available networks"
echo -e "${White} [${Yellow}4${White}] Connect to network with password"
echo -e "${White} [${Yellow}5${White}] Connect to network"
echo ""
echo -e "${White} [${Yellow}r${White}] Return to main menu"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read netwi

case $netwi in

1)
nmcli radio wifi off
bspc ;;

2)
nmcli radio wifi on
bspc ;;

3)
echo ""
nmcli dev wifi list
echo ""
echo -ne "${White} [Press any key to continue]..."
read
bspc ;;

4)
echo ""
nmcli dev wifi list
echo ""
echo -e "${White} [The network name]..."
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read namenet
echo ""
echo -e "${White} [The network password]..."
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read passwd
echo ""
nmcli dev wifi connect "${namenet}" password "${passwd}"
sleep 2
bspc ;;

5)
echo ""
nmcli dev wifi list
echo ""
echo -e "${White} [The network name]..."
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read onenameco
echo ""
nmcli dev wifi connect "${onenameco}"
sleep 2
bspc ;;

r)
bspc ;;

* )
echo -e "${White} [The option is not valid please choose a number or letters]"
sleep 1
bspc ;;
esac
}

# The alvinpix github
alvinpixgit () {
echo ""
echo -e "${White} [Github repositories]..."
echo ""
echo -e "${White} [${Yellow}1${White}] Ghost-script"
echo -e "${White} [${Yellow}2${White}] Linux-utilities"
echo -e "${White} [${Yellow}3${White}] Dotfiles bspwm"
echo ""
echo -e "${White} [${Yellow}r${White}] Return to main menu"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read gitpix

case $gitpix in

1)
echo ""
cd /home/${user}/Descargas
git clone https://github.com/AlvinPix/Ghost-script.git
cd Ghost-script
chmod +x *
sudo ./Ghost_installer.sh
bspc ;;

2)
echo ""
cd /home/${user}/Descargas
git clone https://github.com/AlvinPix/Linux-utilities.git
bspc ;;

3)
echo ""
cd /home/${user}/Descargas
git clone https://github.com/AlvinPix/dotfiles.git
bspc ;;

r)
bspc ;;

* )
echo -e "${White} [The option is not valid please choose a number or letters]"
sleep 1
bspc ;;
esac
}

# The updates menu using nala or apt
updates () {
echo ""
echo -e "${White} [${Yellow}1${White}] Package manager apt"
echo -e "${White} [${Yellow}2${White}] Nala front-end apt"
echo ""
echo -e "${White} [${Yellow}r${White}] Return to main menu"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read opt

case $opt in

1)
apt ;;

2)
nala ;;

r)
bspc ;;

* )
echo -e "${White} [The option is not valid please choose a number or letters]"
sleep 1
bspc ;;
esac
}

# Nala updates
nala () {
echo ""
echo -e "${White} [After the update you want to reboot your system] ${White}[${Yellow}S/N${White}]"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read want
if [ $want = S ]; then
	echo ""
	sudo nala upgrade -y && sudo reboot now
else
	nalashutdown
fi
}
nalashutdown () {
echo ""
echo -e "${White} [After the update you want to shutdown your system] ${White}[${Yellow}S/N${White}]"
echo ""
echo -ne "${White} [${Yellow}BSPC${White}] --> ${Yellow}"
read who
if [ $who = S ]; then
	echo ""
	sudo nala upgrade -y && sudo shutdown now
else
	echo ""
	sudo nala upgrade -y
	sleep 2
	echo ""
	bspc
fi
}

# Call menus the script
reset
bspc
