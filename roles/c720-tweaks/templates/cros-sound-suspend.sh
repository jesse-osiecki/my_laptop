#!/bin/bash

case $1/$2 in
  pre/*)
    # Unbind ath9k for preventing error and full sleep mode (wakeup by LID after hibernating) 
    echo -n "0000:01:00.0" | tee /sys/bus/pci/drivers/ath9k/unbind
    # Unbind snd_hda_intel for sound
    echo -n "0000:00:1b.0" | tee /sys/bus/pci/drivers/snd_hda_intel/unbind
    echo -n "0000:00:03.0" | tee /sys/bus/pci/drivers/snd_hda_intel/unbind
    ;;
  post/*)
    # Bind ath9k for preventing error and and full sleep mode (wakeup by LID after hibernating) 
    echo -n "0000:01:00.0" | tee /sys/bus/pci/drivers/ath9k/bind
    # bind snd_hda_intel for sound
    echo -n "0000:00:1b.0" | tee /sys/bus/pci/drivers/snd_hda_intel/bind
    echo -n "0000:00:03.0" | tee /sys/bus/pci/drivers/snd_hda_intel/bind
    ;;
esac
