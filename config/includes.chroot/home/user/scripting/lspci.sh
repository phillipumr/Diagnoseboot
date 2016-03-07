##!/bin/bash

#This script will read a few logfiles and create a new one with all the information.

#definitions
LOGFILE='/home/user/scripting/logfile.txt'
Datum=`date +%Y-%m-%d-%H-%M`

#clear log before reading the files, NOT for use in live system!!
#Only for the first script...
#>$LOGFILE

#write stuff into logfile including date

#dmesg (Ausgabe von Kernel-Meldungen)
echo $Datum >> $LOGFILE
echo "Ausgabe von lspci:\n" >> $LOGFILE
lspci -v >> $LOGFILE
echo "----------------------------------------------\n\n" >> $LOGFILE

