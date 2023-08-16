#!/bin/bash
# 42 Ubuntu Cleaner Script
# Author: Oussama Manar
# login: omanar
# Description: Optimizes and cleans your Ubuntu system for more free spaces.

# Perform cleaning tasks
echo -e "Cleaning your system...\n"

flatpak uninstall --unused -y &> /dev/null
/bin/rm -rf ~/.cache/.thumbnails/* &> /dev/null
/bin/rm -rf ~/thumbnails/* &> /dev/null
/bin/rm -rf ~/.local/share/Trash/* &> /dev/null
/bin/rm -rf ~/tmp/* &> /dev/null
/bin/rm -rf ~/.cache/* &> /dev/null
/bin/rm -rf ~/.var/app/com.google.Chrome/cache/ &> /dev/null
/bin/rm -rf ~/.var/app/com.google.Chrome/config/google-chrome/component_crx_cache/* &> /dev/null
/bin/rm -rf ~/.var/app/com.google.Chrome/config/google-chrome/extensions_crx_cache/* &> /dev/null
/bin/rm -rf ~/.var/app/com.google.Chrome/config/google-chrome/Default/Service\ Worker/ScriptCache/* &> /dev/null
/bin/rm -rf ~/.var/app/com.google.Chrome/config/google-chrome/Default/Service\ Worker/CacheStorage/* &> /dev/null
/bin/rm -rf ~/.var/app/com.spotify.Client/cache/ &> /dev/null
/bin/rm -rf ~/.var/app/com.visualstudio.code/cache/ &> /dev/null
/bin/rm -rf ~/.var/app/com.visualstudio.code/config/Code/Cache/ &> /dev/null
/bin/rm -rf ~/.var/app/com.visualstudio.code/config/Code/CachedData/ &> /dev/null
/bin/rm -rf ~/.var/app/com.visualstudio.code/config/Code/CachedExtensionVSIXs/ &> /dev/null
/bin/rm -rf ~/.var/app/com.discordapp.Discord/config/discord/Cache/ &> /dev/null
/bin/rm -rf ~/.var/app/com.discordapp.Discord/cache/ &> /dev/null
/bin/rm -rf ~/.var/app/org.mozilla.firefox/cache/ &> /dev/null
/bin/rm -rf ~/.var/app/*/cache/ &> /dev/null

echo -e "\033[32mCleaning completed!\033[0m"

# End of script
