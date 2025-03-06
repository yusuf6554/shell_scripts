#!/bin/bash

if [ -d "~/.var/app/com.google.Chrome/config/google-chrome" ]; then
	if [ -d "~/.config/google-chrome" ]; then
		mv "~/.config/google-chrome" "~/.config/google-chrome.bak"
		echo "Backup of ~/.config/google-chrome created"
	fi
	mv "~/.var/app/com.google.Chrome/config/google-chrome" "~/.config/google-chrome"
	echo "Flatpak version of Chrome has been migrated to the non-Flatpak version"
else
	echo "Flatpak version of Chrome is not installed"
fi
