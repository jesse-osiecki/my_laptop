#!/bin/bash
echo ---
echo package_list:
pacman -Qne | awk '{print "  - "$1}'

echo
echo aur_list:
pacman -Qme | awk '{print "  - "$1}'


