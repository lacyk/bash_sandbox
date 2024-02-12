#!/bin/bash

arr=("/" "-" "\\" "|")

# Get the width of the terminal
cols=80
width=$(tput cols)

for i in ${arr[@]}; do
    # Calculate the number of spaces to fill the line
    spaces=$((width - ${#i}))

    # Print the symbol and fill the remaining spaces with spaces
    # echo -ne "\r$i%${spaces}s"
    printf "\r%s%${spaces}s" "$i" " "
    
    # Sleep for 0.4 seconds
    sleep 0.4
done

echo
