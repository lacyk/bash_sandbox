#!/bin/bash

arr=("/" "-" "\\" "|" )

for i in ${arr[@]}; do
	echo -ne "\r$i  $i  $i  $i  $i  $i  $i  $i  $i"
	sleep 0.4
done

echo