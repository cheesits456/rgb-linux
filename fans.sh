#!/bin/bash

# Initialize RGB variables
r=15
g=0
b=0

while true; do

	# If blue is 0, decrease red and increase green
	if [ $r -gt 0 ] && [ $b == 0 ]; then
		r=`expr $r - 1`
		g=`expr $g + 1`
	fi

	# If red is 0, decrease green and increase blue
	if [ $g -gt 0 ] && [ $r == 0 ]; then
		g=`expr $g - 1`
		b=`expr $b + 1`
	fi

	# If green is 0, decrease blue and increase red
	if [ $b -gt 0 ] && [ $g == 0 ]; then
		b=`expr $b - 1`
		r=`expr $r + 1`
	fi

	# Convert the decimal values to single digit Hex numbers (0-F)
	red=`printf '%X' $r`
	green=`printf '%X' $g`
	blue=`printf '%X' $b`

	# Set each value to 8 of itself (msi-rgb uses an 8 digit hex value for each color)
	# Loop goes 3 times, so 3 doublings in length - 2^3=8
	for n in {0..2}; do
		red=$red$red
		green=$green$green
		blue=$blue$blue
	done

	# Set the fan colors
	msi-rgb $red $green $blue -d 0

	# Small delay, then repeat
	sleep 0.1

done
