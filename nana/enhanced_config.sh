#!/bin/bash


echo -e "Setup and configure server: \\n "

file_name=config.yaml

configure(){

	if [ -d "config" ]
	then
		echo -e "Reading config directory:\\n"
		config_files=$(ls config)
	else
		echo "config dir not fount, creating one:"
		mkdir config
fi
}


echo "Reading user input: "
read -p "Enter your password: " usr_pswd

echo $usr_pswd

user_name=$1

[ $user_name == "mcrory" ] && echo "Permission granted" && configure || echo "Permission denied"


