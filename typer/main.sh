#!/bin/bash

frequent_char_sets=("th" "he" "in" "er" "an" "re" "ed" "on" "es" "st" "en" "at" "to" "nt" "ha" "ou" "ea" "ng" "ing" "igh" "ough" "tion" "tio" "ter" "est")
arr_length=${#frequent_char_sets[@]}

echo "How many words ?"
read word_count

get_random_index() {
	echo $((RANDOM % $arr_length))
}

# add_set() {
# 	echo "${frequent_char_sets[$(get_random_index)]}"
# }

add_set() {
    local random_index
    local result=""
    local num_words=$word_count  # Number of words specified by the user

    for _ in $(seq "$num_words"); do
        random_index=$(get_random_index)
        result+="${frequent_char_sets[$random_index]} "
    done

    echo "$result"
}

uno=$(add_set 6)
echo $uno

echo "Type the word above:"

read -r typed_text  # Use -r to preserve backslashes

# Remove trailing spaces from both generated words and user input
uno_trimmed="${uno%" "}"
typed_text_trimmed="${typed_text%" "}"

# Compare the trimmed strings
if [ "$typed_text_trimmed" == "$uno_trimmed" ]; then
    echo "You got it!"
else
    echo "Try again!"
fi



# read typed_text

# if [ "$typed_text" == "$uno" ] 
# then
# 	echo "You got it!"
# else
# 	echo "Try again !"
# fi


