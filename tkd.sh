#!/bin/bash
TERM=linux
export TERM
cd $(dirname $0) || exit 1
#while [ "" = "" ]
#do
flag=0
if [ -f tsm.pid ]; then
    echo "transmission is On"
    pid=`cat tsm.pid`
    cpu=`top -bn 1 -p $pid|tail -1|head -1|awk '{ssd=NF-3} {print $ssd}'`
    pp=`echo "$cpu>60" |bc`
    if [ "$pp" = "1" ]; then
	kill $pid
#invoke-rc.d transmission-daemon stop
	sleep 2
	kill -9 $pid
	flag=1
	echo "killed"
    fi
else
    flag=1
fi
if [ "$flag" = "1" ]; then
    tsocks transmission-daemon -x tsm.pid
    echo "restarted"
fi
#sleep 180
#done

	
