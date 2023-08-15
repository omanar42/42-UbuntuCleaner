#!/bin/bash
# 42 Ubuntu Cleaner Script
# Author: Oussama Manar
# login: omanar

# update
git pull &> /dev/null

# get shell config
shellConfig=$(echo -n "$SHELL" | awk -F / '{print $3}')
shellConfig="$HOME/.${shellConfig}rc"

# check if the script is already installed
if grep -q "alias uclean" < "$shellConfig" &> /dev/null && ls "$HOME"/.42-UbuntuCleaner.sh &> /dev/null; then
	echo -e "\033[33m\n -- 42 Ubuntu Cleaner is already installed --\n\033[0m"
	exit 0
fi

# remove old script
/bin/rm -f "$HOME"/.42-UbuntuCleaner.sh &> /dev/null

# copy script
/bin/cp -f ./42-UbuntuCleaner.sh "$HOME"/.42-UbuntuCleaner.sh &> /dev/null

# add alias
if ! grep -q "alias uclean" < "$shellConfig" &> /dev/null; then
	echo -e "\nalias uclean=\"bash $HOME/.42-UbuntuCleaner.sh\"" >> "$shellConfig"
fi

# source shell config
source "$shellConfig"

echo -e "\033[32m\n -- 42 Ubuntu Cleaner Successfully Installed --\n\033[0m"

exit 0