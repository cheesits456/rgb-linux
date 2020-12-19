#!/bin/bash

r=15
g=0
b=0

while true; do

	if [ $r -gt 0 ] && [ $b == 0 ]; then
		r=`expr $r - 1`
		g=`expr $g + 1`
	fi

	if [ $g -gt 0 ] && [ $r == 0 ]; then
		g=`expr $g - 1`
		b=`expr $b + 1`
	fi

	if [ $b -gt 0 ] && [ $g == 0 ]; then
		b=`expr $b - 1`
		r=`expr $r + 1`
	fi

	red=`printf '%X' $r`
	green=`printf '%X' $g`
	blue=`printf '%X' $b`

	for n in {0..2}; do
		red=$red$red
		green=$green$green
		blue=$blue$blue
	done

	msi-rgb $red $green $blue -d 0

	sleep 0.1

done
