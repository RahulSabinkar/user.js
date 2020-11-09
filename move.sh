#!/bin/sh

echo "Copying files from " &&

pwd &&

echo "To" &&

echo "$HOME/.mozilla/firefox/*.Privacy/" &&
# Copy files from
cp -iv \
    prefsCleaner.sh \
    updater.sh \
    user.js \
    user-overrides.js \
    $HOME/.mozilla/firefox/*.Privacy/
