#!/bin/bash
# Check if run on Arch and if as root/sudo
if ! command -v pacman &> /dev/null
then
    echo "Not running on Arch."
    exit 1
fi
if [ "$EUID" -ne 0 ]
then
    echo "Please run as root."
    exit 1
fi

# Install paru
pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si