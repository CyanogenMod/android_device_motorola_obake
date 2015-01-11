#!/system/bin/sh

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin

# Link thermald
device=$(getprop ro.boot.device)
ln -s /etc/thermald-${device}.conf /dev/thermald.conf
unset device 
