#!/bin/bash

export DISPLAY=:1
export XAUTHORITY=/home/typo/.Xauthority

function connect(){
    xrandr --output HDMI1 --left-of eDP1 --preferred --primary --output eDP1 --preferred 
}
  
function disconnect(){
      xrandr --output HDMI1 --off
}
   
xrandr | grep "HDMI1 connected" &> /dev/null && connect || disconnect

nitrogen --set-zoom-fill /home/typo/.i3/gargantua.png
