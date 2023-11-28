#!/bin/bash

alphabet=({a..z})
arr_length=${#alphabet[@]}

get_random_index() {
	echo $((RANDOM % $arr_length))
}

get_random_index
get_random_index
get_random_index


echo -ne ${alphabet[$(get_random_index)]}
echo -ne ${alphabet[$(get_random_index)]}
echo -ne ${alphabet[$(get_random_index)]}
echo -ne ${alphabet[$(get_random_index)]}
echo
# echo $arr_length
# echo ${alphabet[*]}

