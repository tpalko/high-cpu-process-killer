high-cpu-process-killer
=======================

Bash shell script that will kill -9 any process using over a specified threshold of your CPU. Useful if you are plagued with system processes that randomly spike your processor and will automatically be respawned if killed.

	* * * * * /var/root/./killer.sh dry >> /var/root/killer_dry.log 2>&1
	* * * * * /var/root/./killer.sh >> /var/root/killer_wet.log 2>&1
