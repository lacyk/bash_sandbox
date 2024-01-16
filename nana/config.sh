#!/bin/bash


echo "Setup and configure server"



file_name=config.yaml

if [ -d "config" ]
then
	echo "reading config directory"
	config_files=$(ls config)
else
	echo "config dir not fount, creating one:"
	mkdir config
fi

echo "using file $file_name to make configuration"
echo "here are the all configuration files: $config_files"
