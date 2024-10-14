#!/bin/sh
if xrandr | grep "eDP1 (connected)"
then
	autorandr -l work
else
	autorandr -l default
fi
