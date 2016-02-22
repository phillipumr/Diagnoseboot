#!/bin/bash

#Dies ist ein Skript v1.0

SMARTCTL='/usr/sbin/smartctl'
SMARTOPTS='-a'
LOGFILE='/root/workspace/logsmart.txt'

#Ausgabe aller Disks(von a-Z) durch ls
DISKS=$(ls /dev/sd[a-Z])

for disk in $DISKS
do

        echo "REPORT: check SMARTvalues of $disk" >>$LOGFILE
        $SMARTCTL $SMARTOPTS $disk >> $LOGFILE
        echo "REPORT: DONE" >>$LOGFILE
	echo "---------------------" >>$LOGFILE
	echo " " >>$LOGFILE
done
