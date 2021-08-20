#!/bin/fish

function screenInit
    xrandr --output DP1 --right-of HDMI1
    xrandr --output HDMI1 --left-of DP1
    xrandr --output eDP1 --off
end
screenInit
