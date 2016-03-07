#!/bin/bash

#Script for checking smart values of hard drives

#definitions
SMARTCTL='/usr/sbin/smartctl'
SMARTOPS='-a' #-a show all information
LOGFILE='/home/user/scripting/logfile.txt' #change as needed for other environment

#get all disks
DISKS=$(ls /dev/sd[a-z])

for disk in $DISKS
do
	echo "REPORT: smartmontools $disk:\n" >>$LOGFILE
	$SMARTCTL $SMARTOPS $disk >>$LOGFILE
	echo "\n--------------------------------------------\n" >>$LOGFILE
done
