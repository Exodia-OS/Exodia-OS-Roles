#!/bin/bash

## ------------ COLORS ------------ ##

# Reset #
RESET_COLOR='\033[0m' # Text Reset

# Regular Colors #
Black='\033[0;30m'  Red='\033[0;31m'     Green='\033[0;32m'  Yellow='\033[0;33m'
Blue='\033[0;34m'   Purple='\033[0;35m'  Cyan='\033[0;36m'   White='\033[0;37m'

# Bold #
BBlack='\033[1;30m' BRed='\033[1;31m'    BGreen='\033[1;32m' BYellow='\033[1;33m'
BBlue='\033[1;34m'  BPurple='\033[1;35m' BCyan='\033[1;36m'  BWhite='\033[1;37m'

# Underline #
UBlack='\033[4;30m' URed='\033[4;31m'    UGreen='\033[4;32m' UYellow='\033[4;33m'
UBlue='\033[4;34m'  UPurple='\033[4;35m' UCyan='\033[4;36m'  UWhite='\033[4;37m'

# Background #
On_Black='\033[40m' On_Red='\033[41m'    On_Green='\033[42m' On_Yellow='\033[43m'
On_Blue='\033[44m'  On_Purple='\033[45m' On_Cyan='\033[46m'  On_White='\033[47m'

# High Intensity #
IBlack='\033[0;90m' IRed='\033[0;91m' IGreen='\033[0;92m' IYellow='\033[0;93m'      
IBlue='\033[0;94m' IPurple='\033[0;95m' ICyan='\033[0;96m' IWhite='\033[0;97m'      

# Bold High Intensity #
BIBlack='\033[1;90m' BIRed='\033[1;91m' BIGreen='\033[1;92m' BIYellow='\033[1;93m'
BIBlue='\033[1;94m' BIPurple='\033[1;95m' BICyan='\033[1;96m' BIWhite='\033[1;97m'

# High Intensity backgrounds #
On_IBlack='\033[0;100m' On_IRed='\033[0;101m' On_IGreen='\033[0;102m' On_IYellow='\033[0;103m'
On_IBlue='\033[0;104m' On_IPurple='\033[0;105m' On_ICyan='\033[0;106m' On_IWhite='\033[0;107m'


echo -e "\n${BCyan}[*] Enable ContainerD Services${RESET_COLOR}"
sudo systemctl start containerd.service
sudo systemctl enable containerd.service

echo -e "\n${BCyan}[*] Enable Docker Services${RESET_COLOR}"
sudo systemctl start docker.service
sudo systemctl enable docker.service

echo -e ${BBlue}"[*] Granting permissions" ${RESET_COLOR}
echo -e ${BBlue}"   ==> Create Docker Group " ${RESET_COLOR}
sudo groupadd docker
echo -e ${BBlue}"   ==> Add User To Docker Group " ${RESET_COLOR}
sudo usermod -aG docker $USER

echo -e "\n${BGreen}[*] Log out and log back in so that your group membership is re-evaluated \n${RESET_COLOR}"

# D O N E! #
echo -e "\n${BGreen}[✔] D O N E \n${RESET_COLOR}"
