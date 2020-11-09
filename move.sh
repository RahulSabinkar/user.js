#!/bin/sh

echo "Copying files from " && pwd &&
# Copy files from
cp -iv \
    prefsCleaner.sh \
    updater.sh \
    user.js \
    user-overrides.js \
    $HOME/.mozilla/firefox/*.Privacy/
