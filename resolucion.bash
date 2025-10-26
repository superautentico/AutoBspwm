#!/bin/bash
xrandr --newmode "2880x1800_60.00"  442.00  2880 3104 3416 3952  1800 1803 1809 1865 -hsync +vsync
xrandr --addmode Virtual-1 "2880x1800_60.00"
xrandr -s 2880x1800
