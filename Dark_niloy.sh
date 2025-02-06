#!/bin/bash

clear

pkg install figlet

clear

figlet DARK NILOY

# Colors for output
GREEN="\033[0;32m"
RED="\033[0;31m"
CYAN="\033[0;36m"
RESET="\033[0m"

# Function to display a banner
function banner() {
    echo -e "${CYAN}"
    echo "=============================="
    echo "     My Termux Tool v1.0      "
    echo "=============================="
    echo -e "${RESET}"
}

# Function to update and upgrade packages
function Install_Linux() {
    echo -e "${GREEN}LINUX INSTALL.....${RESET}"
    pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh -O kali-xfce.sh && chmod +x kali-xfce.sh && bash kali-xfce.sh 
}


# Function to update and upgrade packages
function install_meta() {
    echo -e "${GREEN}metasploit install ...${RESET}"
    pkg install wget

wget https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh


chmod +x metasploit.sh

./metasploit.sh

msfconsole
}









# Function to install common tools
function install_lab() {
    echo -e "${GREEN}setup lab  common tools...${RESET}"
    pkg install figlet -y

figlet DARK NILOY



termux-setup-storage

pkg install git -y

pkg install cmatrix

cmatrix 


apt list

pkg install bash



pkg install openssh -y

pkg install php -y

pkg install screenfetch

screenfetch

pkg install c -y

pkg install pip -y

apt install samba -y

pkg install python -y

pkg install python 2 -y

pkg install cat -y

pkg install clang -y

pkg install nano -y

pkg install rubi -y

pkg install wget -y

pkg install sl -y

sl

pkg install c script -y

pkg install node.js -y

pkg install curl -y

pkg install perl -y

pkg install apache 2 -y

pkg install nmap -y

figlet COMPLITE

figlet DARK NILOY✓

    
    
    
    
    
    
    
    
    echo -e "${GREEN}NILOY LAB  installed successfully!${RESET}"
}

# Function to display system info
function system_info() {
    echo -e "${CYAN}System Information:${RESET}"
    uname -a
    
    
}

# Main Menu
function main_menu() {
    banner
    echo -e "${GREEN}Choose an option:${RESET}"
    echo "1. Install Linux"
    echo "2. Install lab"
    echo "3. Display System Info"
    echo "4. install metasploit"
    echo "5. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) Install_Linux ;;
        2) install_lab ;;
        3) system_info ;;
        4) install_meta ;;
        5) echo -e "${RED}Exiting...${RESET}"; exit ;;
        *) echo -e "${RED}Invalid choice, try again.${RESET}"; main_menu ;;
    esac
    
   
}

# Start the script
main_menu
