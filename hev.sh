#!/bin/sh
# Command line wrapper for HEV sounds

for var in "$@"
do
	if [ "$var" = sleep ]; then
		sleep 1
	else
		play -q "sound/$var.wav"
	fi
done