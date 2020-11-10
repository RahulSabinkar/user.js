#!/usr/bin/sh
# Colors used for printing
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

printf "${GREEN}Enter exact name of your firefox profile (case sensitive): ${NC}"
read profile

currdir=$(pwd)
tardir=$HOME/.mozilla/firefox/*.$profile/

cd $tardir && tardir=$(pwd) && cd $currdir

printf "${ORANGE}Copying files from ${NC}$currdir${ORANGE} to ${NC}$tardir\n${NC}"
printf "${GREEN}Are you sure? [y/N] ${NC}"
read answer
if [[ "$answer" =~ ^([yY][eE][sS]|[yY])$ ]] ; then
    if [[ -d $tardir ]] ; then
        printf "${ORANGE}"
        cp -iv \
            prefsCleaner.sh \
            updater.sh \
            user.js \
            user-overrides.js \
            $tardir
        printf "${NC}"
    else
        printf "${RED}Error: $tardir not found. Please enter proper name of your firefox profile.\n${NC}"
        exit 1
    fi

    printf "${GREEN}Do you want to run updater.sh? [y/N] ${NC}"
    read answer2

    if [[ "$answer2" =~ ^([yY][eE][sS]|[yY])$ ]] ; then
        cd $tardir
            sh updater.sh
        cd $currdir
    else
        printf "${RED}user-overrides.js was not updated\n${NC}"
        exit 0
    fi
else
    printf "${RED}Process terminated by user\n${NC}"
    exit 0
fi
