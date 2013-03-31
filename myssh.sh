#!/bin/bash

while [ '' == '' ]
do
	ssh_d_process_num=`ps aux|grep -E 'ssh \-' |grep -v grep |wc -l`
	#echo 'ssh_d_process_num:'$ssh_d_process_num
	if [ "$ssh_d_process_num" == "0" ]; then
		echo 'ssh -d terminaled'
		sshpass -p 'the passwprd' ssh -TfnN  -D 7247 root@acm
	else
		echo 'ssh -d running'
	fi

	sleep 20
done
