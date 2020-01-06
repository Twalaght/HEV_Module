#!/bin/bash

count=$1

while :
do
	bash hev.sh count
	if [ "$count" -gt 0 ]; then
		clear
		echo "$count"
		bash hev.sh "$count"
		count=$((count-1))
		sleep 0.3
	else
		break
	fi
done