#!/usr/bin/sh

printf "Enter exact name of your firefox profile (case sensitive): "
read profile
currdir=$(pwd)
tardir=$HOME/.mozilla/firefox/*.$profile/
printf "Copying files from $currdir to $tardir\n"
printf "Confirm? yes or no: "
read answer
if [[ "$answer" == "yes" || "y" ]] ; then
    cp -iv \
        prefsCleaner.sh \
        updater.sh \
        user.js \
        user-overrides.js \
        $tardir
else
    printf "Process terminated by user\n"
fi

printf "Do you want to run updater.sh? yes or no: "
read answer2

if [[ "$answer2" == "yes" || "y" ]] ; then
    cd $tardir
        sh updater.sh
    cd $currdir
else
    printf "Process terminated by user\n"
fi
