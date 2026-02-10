#!/bin/bash
touch ~/secure_vault/secrets.txt
touch ~/secure_vault/logs.txt
echo "You are in the secret directory"

while true
do 
	echo "Select the number corresponding to your choice:"
	echo "1 Add a secret"
	echo "2 Update a secret"
	echo "3 Add log entry"
	echo "4 Access key"
	echo "5 Exit"
	read -r user
	case $user in 
		1)
			echo "You can write your new secret"
			read -r input
			echo "$input" >> ~/secure_vault/secrets.txt
			;;
		2) 
			echo "Which text do you want to replace"
			read -r text
			echo "What text do you want to replace $text with?"
			read -r texts
			if grep -q "$text" ~/secure_vault/secrets.txt
			then
				sed -i "s|$text|$texts|g" ~/secure_vault/secrets.txt
			else 
				echo "No match found."
			fi
			;;
		3) 
			echo "Add a log message"
			read -r log
			timestamp=$(date +%y%m%d)
			echo "$timestamp: $log" >> ~/secure_vault/logs.txt
			;;
		4)
			echo "ACCESS DENIED 🚫"
			;;
		5)
			break
			;;
	esac
done
