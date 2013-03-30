#!/bin/bash
batsts=/sys/class/power_supply/BAT0/status
bts=`cat $batsts`
#if [ "$bts" = "Discharging" ]; then
	rm -rf /dev/nvidia*
	optirun optimusOff.sh
	rm -rf /dev/nvidia*
#fi




