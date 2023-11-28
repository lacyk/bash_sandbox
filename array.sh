#!/bin/bash

declare -a spinner_array

spinner_array[0]="|"
spinner_array[1]="/"
spinner_array[2]="-"
spinner_array[3]="\\"

tput civis

spin_me () {
	for j in ${spinner_array[@]}; do
		echo -ne "\r$j"
		sleep 0.4
	done
}


for i in {1..100}; do
	spin_me
done
#tput civis > cnorm (hidind/unhiding terminal cursor)
