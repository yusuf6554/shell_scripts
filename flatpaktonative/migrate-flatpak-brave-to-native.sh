#!/bin/bash

if [ -d "~/.var/app/com.brave.Browser/config/BraveSoftware" ]; then
	if [ -d "~/.config/BraveSoftware" ]; then
		mv "~/.config/BraveSoftware" "~/.config/BraveSoftware.bak"
		echo "Backup of ~/.config/BraveSoftware created"
	fi
	mv "~/.var/app/com.brave.Browser/config/BraveSoftware" "~/.config/BraveSoftware"
	echo "Flatpak version of Brave has been migrated to the non-Flatpak version"
else
	echo "Flatpak version of Brave is not installed"
fi
