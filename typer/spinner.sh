#!/bin/bash

arr=("/" "-" "\\" "|" )

width=$(tput cols)

echo $width

spin_me(){
	for i in ${arr[@]}; do
		echo -ne "\r$i"
		sleep 0.4
	done	
}

for ((j=width; j>=0; j--)); do
	spin_me
	echo $j
done


