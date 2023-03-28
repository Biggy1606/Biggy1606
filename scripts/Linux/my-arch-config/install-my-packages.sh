#!/bin/bash
if ! command -v paru &> /dev/null
then
    echo "Paru is not installed."
    echo "Install paru from script in this dir"
    exit 1
fi

# Update before any installation
paru

# Terminal applications
paru -S --needed fish fisher rclone lazygit lazydocker bat fd fzf lsd tldr tree btop neovim byobu grex grub-btrfs

# Gui applications
paru -S --needed wezterm copyq keepassxc flameshot octopi bleachbit rpi-imager qview xournalpp barrier thunderbird\
partitionmanager udftools fatresize \
brave-nightly-bin visual-studio-code-bin discord spotify

# Fonts
paru -S --needed powerline-fonts powerline \
ttf-firacode-nerd ttf-fira-code \
ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-2048-em ttf-nerd-fonts-symbols-2048-em-mono \
ttf-meslo-nerd \
noto-fonts-cjk noto-fonts-emoji noto-fonts-extra

# ASUS packages (use if g14 is added)
paru -S --needed rog-control-center asusctl supergfxctl

# BTRFS tools with backup tools (use if using btrfs)
paru -S --needed btrfs-assistant snapper btrfsmaintenance

# Downlad papirus icons
paru -S --needed papirus-icon-theme

# KDE addons
paru -S --needed kdeconnect kdeplasma-addons ktorrent