#!/bin/bash

ardvar="[REDACTED]"

print() {
	echo "===== RADIO PING RESPONSE RECORDS ====="
	echo "1) Self to Stronghold"
	echo "2) Self to $ardvar"
	echo "3) Kassa to $ardvar"
	echo "4) Aurora to $ardvar"
	read -r input
}

locked() {
	while :
	do
		clear
		echo "===== USER AUTH REQUIRED ====="
		echo "Please enter passcode:"
		read -r input

		if [ "$input" = vigilo84 ]; then
			ardvar="Ardact 'Tranom"
			echo "Access granted..."
			sleep 2
			echo "Welcome commander"
			sleep 3
			break
		else
			echo "Incorrect password"
			sleep 1
		fi
	done
}

while :
do
	clear
	print
	case "$input" in
		"1") bash hev.sh bell sleep 1 5 3 1 2 meters ;;
		"2") bash hev.sh bell sleep 8 1 1 7 meters ;;
		"3") bash hev.sh bell sleep 2 8 2 3 4 meters ;;
		"4") bash hev.sh bell sleep 1 7 4 2 9 meters;;
		"p") locked ;;
		*) bash hev.sh bell sleep fuzz
	esac
done