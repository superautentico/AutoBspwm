#!/bin/bash

ip_address=$(/bin/cat /home/$USER/.config/polybar/custom_modules/target | awk '{print $1}')
if [ $ip_address ]; then
     echo "%{F#e51d0b}󰓾 %{F#ffffff}%{T7}$ip_address%{u-}"
else
    echo "%{F#e51d0b}󰓾 %{u-}%{F#ffffff}%{T7} No target"
fi
