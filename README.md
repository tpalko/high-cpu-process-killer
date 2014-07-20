high-cpu-process-killer
=======================

Bash shell script that will kill -9 any process using over a specified threshold of your CPU. Useful if you are plagued with system processes that randomly spike your processor and will automatically be respawned if killed.

## Installation

HCPK is effectively used by installing two crontab entries. One, the "dry" run, will log found processes with timestamps. The other will actually perform the "kill -9" to end the process.

	* * * * * /var/root/./killer.sh dry >> /var/root/killer_dry.log 2>&1
	* * * * * /var/root/./killer.sh >> /var/root/killer_wet.log 2>&1

## Options

The two most obvious configurations are to define the list of processes you want to be killed. No, this script does not willy-nilly kill processes. You must set a known list of process names. The other configuration is the threshold CPU percentage. Both of these values are easily identifiable by examining the script itself.

The "kill list":

	killlist=( .. ) # - space-separated list of process names
	
and the default 99%:

	.. awk '{ if($2>=99) .. # - you see it, right?


