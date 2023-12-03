#!/bin/bash

frequent_char_sets=("th" "he" "in" "er" "an" "re" "ed" "on" "es" "st" "en" "at" "to" "nt" "ha" "ou" "ea" "ng" "ing" "igh" "ough" "tion" "tio" "ter" "est")
arr_length=${#frequent_char_sets[@]}

get_random_index() {
	echo $((RANDOM % $arr_length))
}

# add_set() {
# 	echo "${frequent_char_sets[$(get_random_index)]}"
# }

add_set() {
    local random_index
    local result=""
    local num_words=$1  # Number of words specified by the user

    for _ in $(seq "$num_words"); do
        random_index=$(get_random_index)
        result+="${frequent_char_sets[$random_index]} "
    done

    echo "$result"
}

uno=$(add_set 3)
echo $uno

echo "Type the word above:"
read typed_text

if [ "$typed_text" == "$uno" ] 
then
	echo "You got it!"
else
	echo "Try again !"
fi


