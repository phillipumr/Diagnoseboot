#!/bin/bash

#A Script to use all scripts for logfiles and further information about the hardware.

#definitions
USB='/home/user/scripting/lsusb.sh'
PCI='/home/user/scripting/lspci.sh'
DMESG='/home/user/scripting/dmesg.sh'
SMART='/home/user/scripting/smart.sh'

$USB
$PCI
$DMESG
$SMART
