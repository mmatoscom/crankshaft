#!/bin/bash

DEVELOPMENT_MODE=`/opt/crankshaft/devmode.sh status`

if [ ${DEVELOPMENT_MODE} == "disabled" ]; then
	case $1 in
		unlock)
			mount -o remount,rw /
			;;
		lock)
			mount -o remount,ro /
			sync
			;;
		unlock_boot)
			mount -o remount,rw /boot/
			;;
		lock_boot)
			mount -o remount,ro /boot/
			sync
			;;
	esac
fi
