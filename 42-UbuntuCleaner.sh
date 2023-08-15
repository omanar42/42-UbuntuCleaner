#!/bin/bash
# 42 Ubuntu Cleaner Script
# Author: Oussama Manar
# login: omanar
# Description: Optimizes and cleans your Ubuntu system for more free spaces.

# Perform cleaning tasks
echo -e "Cleaning and optimizing your system...\n"
/bin/rm -rf ~/.cache/.thumbnails/* &> /dev/null
/bin/rm -rf ~/thumbnails/* &> /dev/null
/bin/rm -rf ~/.local/share/Trash/* &> /dev/null
/bin/rm -rf ~/tmp/* &> /dev/null
/bin/rm -rf ~/.cache/system-cache/* &> /dev/null
flatpak uninstall --unused -y &> /dev/null

echo -e "\033[32mCleaning completed!\033[0m"

# End of script
