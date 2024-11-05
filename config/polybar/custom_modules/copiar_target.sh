#!/bin/bash

ip_address=$(/bin/cat /home/$USER/.config/polybar/custom_modules/target | awk '{print $1}')
if [ $ip_address ]; then
     echo -n $ip_address | xclip -selection clipboard
fi