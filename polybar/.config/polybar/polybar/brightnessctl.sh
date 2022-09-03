#!/bin/bash

value=`brightnessctl | grep -o "(.*" | tr -d "()"`
num=${value//%}

if [ $num -lt 20 ]; then
	icon="";
elif [ $num -lt 50 ]; then
	icon=""
elif [ $num -lt 80 ]; then
	icon=""
else
	icon=""
fi

echo "$icon $value"
