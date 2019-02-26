#!/bin/bash
export DISPLAY=:0
if [ -d "/sys/devices/pci0000:00/0000:00:14.0/usb2/2-1" ]; then
	sudo -u jesse /home/jesse/bin/work_desktop # 2&1> /tmp/displaylink-docked
else
	sudo -u jesse /home/jesse/bin/laptop_desktop # 2&1> /tmp/displaylink-undocked
fi
