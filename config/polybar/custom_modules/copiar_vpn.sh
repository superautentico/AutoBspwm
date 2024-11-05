#!/bin/bash

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')
if [ $IFACE ]; then
     echo -n $(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')| xclip -selection clipboard
fi