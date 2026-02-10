#!/bin/bash
update_permissions() {
    local filename=$1
    local default_perm=$2

    echo "Do you wish to change the current file permissions of $filename:"
    echo "Enter yes or no"
    read user
    if [ "$user" == "yes" ]
    then
	    echo "Enter your desire permissions"
	    read input
	    chmod $input ~/secure_vault/$filename
	    echo "The permission has successfully be updated"
    elif [ "$user" == "no" ]
    then
	    echo "The permissions will be let as they are"
    elif [ -z "$user" ]
    then
	    echo "Default permission kept"
            chmod $default_perm ~/secure_vault/$filename
            echo "The permission has successfully be updated"


    else
	    echo "Default permission kept"
            chmod $default_perm ~/secure_vault/$filename
            echo "The permission has successfully be updated"
    fi
}


if [ -e ~/secure_vault ]; 
then
	 echo "Directory exists"
	 ls -l ~/secure_vault
	 update_permissions "logs.txt" "644"
	 update_permissions "secrets.txt" "640"
	 update_permissions "keys.txt" "600"

else 
	echo "Directory does not exist"
fi
ls -l ~/secure_vault

