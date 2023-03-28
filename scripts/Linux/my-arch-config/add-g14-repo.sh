#!/bin/bash
if grep -q "gg14" /etc/pacman.conf; then
    echo "g14 repo already added"
else
    echo \
    "[g14]
    Server = https://arch.asus-linux.o
    Server = https://naru.jhyub.dev/\$repo"
fi

# pacman-key --recv-keys 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
# pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
# pacman-key --lsign-key 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
# pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
