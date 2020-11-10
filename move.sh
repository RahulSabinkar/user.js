#!/usr/bin/sh

printf "Enter exact name of your firefox profile (case sensitive): "
read profile
currdir=$(pwd)
tardir=$HOME/.mozilla/firefox/*.$profile/
cd $tardir && tardir=$(pwd) && cd $currdir
printf "Copying files from $currdir to $tardir\n"
printf "Confirm? yes or no: "
read answer
if [[ -d $tardir ]] ; then

    if [[ "$answer" == "yes" || "$answer" == "y" ]] ; then
        cp -iv \
            prefsCleaner.sh \
            updater.sh \
            user.js \
            user-overrides.js \
            $tardir
    else
        printf "Process terminated by user\n"
        exit 1
    fi

    printf "Do you want to run updater.sh? yes or no: "
    read answer2

    if [[ "$answer2" == "yes" || "$answer2" == "y" ]] ; then
        cd $tardir
            sh updater.sh
        cd $currdir
    else
        printf "user-overrides.js was not updated"
        exit 1
    fi

else
    printf "Error: $tardir not found. Please enter proper name of your firefox profile.\n"
    exit 1
fi
