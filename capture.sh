RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

printf "${ORANGE}"
echo "Input Your WIFI Name after Monitor Mode---> 
      [You will find it after ${RED}#iwconfig#${ORANGE}]"
read moname

echo "Input The file name without extention-->"
read filename

echo "Input ${RED}BSSID${ORANGE}-->"
read bssid

echo "Input ${RED}channel${ORANGE}-->"
read channel

sudo airodump-ng -w $filename --bssid $bssid -c $channel  $monname 
