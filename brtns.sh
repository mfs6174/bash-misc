#!/bin/bash
blfile0=/sys/class/backlight/acpi_video0/brightness
blfile1=/sys/class/backlight/acpi_video1/brightness
batsts=/sys/class/power_supply/BAT0/status
chmod 777 $blfile0
chmod 777 $blfile1
bn=5
sbnwbt=1
sbnwac=5
bts=`cat $batsts`
if [ "$1" != "" ]; then
    bn=$1
else
    if [ "$bts" = "Discharging" ]; then
	bn=$sbnwbt
    else
	bn=$sbnwac
    fi
fi
echo $bn > $blfile0
echo $bn > $blfile1



