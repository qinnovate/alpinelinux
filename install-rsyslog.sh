#!/usr/bin/env sh
#OR !/bin/sh

echo ┌────────────────────────────────────┐
echo │ Alpine Linux Config/Install Script │
echo └────────────────────────────────────┘

# Colour variables
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
GREY='\033[0;37m'
DARKGREY='\033[1;30m'
BRIGHTRED='\033[1;31m'
BRIGHTGREEN='\033[1;32m'
BRIGHTYELLOW='\033[1;33m'
BRIGHTBLUE='\033[1;34m'
BRIGHTPURPLE='\033[1;35m'
BRIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'


echo -e "${BRIGHTGREEN}Update package list${RESET}"
apk update


echo -e "${BRIGHTGREEN}Installing rsyslog modules${RESET}"
rc-service syslog stop
rc-update delete syslog boot
apk add rsyslog
rc-service rsyslog start
rc-update add rsyslog boot

echo -e "${BRIGHTGREEN}Done!${RESET}"