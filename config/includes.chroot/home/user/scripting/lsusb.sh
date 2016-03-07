##!/bin/bash

#This script will read a few logfiles and create a new one with all the information.

#definitions
LOGFILE='/home/user/scripting/logfile.txt'
Datum=`date +%Y-%m-%d-%H-%M`

#Clean logfile before every run
>$LOGFILE

#write stuff into logfile including date

#lsusb (Ausgabe von allen USB-Geraeten )
echo $Datum >> $LOGFILE
echo "Ausgabe von lsusb:\n" >> $LOGFILE
lsusb >> $LOGFILE
echo "\n----------------------------------------------\n\n" >> $LOGFILE

