#!/bin/bash

declare -a killlist
killlist=(SystemUIServer mdmclient diskarbitrationd ocspd UserEventAgent helpd Dashboard socketfilterfw uncd blued jamf storeagent)
export now=$(date +%Y-%m-%d\ %H:%M:%S)

for k in ${killlist[*]}
do
	if [ "$1" = "dry" ]
	then
		ps -eo pid,pcpu,command | grep $k | awk '{ if($2>=99) print ENVIRON["now"], $1, $2, $3 }'
	else
		sleep 5
		ps -eo pid,pcpu,command | grep $k | awk '{ if($2>=99) print $1 }' | xargs kill -9
	fi
done
