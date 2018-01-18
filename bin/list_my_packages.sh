#!/bin/bash
echo ---
echo package_list:
pacman -Qe | awk '{print "  - "$1}'

