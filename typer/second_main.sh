#!/bin/bash

shlaban () {
	echo ---------------===============---------------
}

frequent_letter_combinations=("th" "he" "in" "er" "an" "re" "ed" "on" "es" "st" "en" "at" "to" "nt" "ha" "ou" "ea" "ng" "ing" "igh" "ough" "tion" "tio" "ter" "est" "ous" "all" "ive" "ity" "ate" "ful" "ble" "ant" "ers" "ati" "ver" "com" "por" "her" "his" "with" "for" "that" "this" "you" "but" "not" "are" "have" "one" "had" "all" "was" "were" "out" "some" "what" "there" "they" "will" "would" "about" "which" "when" "your" "can" "said" "each" "she" "how" "their" "them" "then" "these" "two" "more" "been" "make" "like" "into" "time" "just" "people" "year" "way" "could" "first" "other" "than" "its" "over" "new" "also" "after" "work" "well" "way" "even" "much" "many" "most" "back" "before" "through" "day" "used" "good" "world" "under" "back" "through" "because" "same" "take" "place" "own" "great" "us" "too" "high" "line" "of" "a" "the" "and" "to" "in" "is" "it" "you" "that" "he" "was" "for" "on" "are" "with" "as" "I" "his" "they" "be" "at" "one" "have" "this" "from" "or" "had" "by" "hot" "but" "some" "what" "there" "we" "can" "out" "other" "were" "all" "your" "when" "up" "use" "word" "how" "said" "an" "each" "she" "which" "do" "their" "time" "if" "will" "way" "about" "many" "then" "them" "write" "would" "like" "so" "these" "her" "long" "make" "thing" "see" "him" "two" "has" "look" "more" "day" "could" "go" "come" "did" "my" "number" "sound" "no" "most" "people" "write" "over" "know" "water" "than" "call" "first" "who" "may" "down" "side" "been" "now" "find" "head" "stand" "own" "page" "should" "country" "found" "answer" "school" "grow" "study" "still" "learn" "plant" "cover" "food" "sun" "four" "between" "state" "keep" "eye" "never" "last" "let" "thought" "city" "tree" "cross" "farm" "hard" "start" "might" "story" "saw" "far" "sea" "draw" "left" "late" "run" "don't" "while" "press" "close" "night" "real" "life" "few" "north" "book" "carry" "took" "science" "eat" "room" "friend" "began" "idea" "fish" "mountain" "stop" "once" "base" "hear" "horse" "cut" "sure" "watch" "color" "face" "wood" "main" "enough" "plain" "girl" "usual" "young" "ready" "above" "ever" "red" "list" "though" "feel" "talk" "bird" "soon" "body" "dog" "family" "direct" "pose" "leave" "song" "measure" "door" "product" "black" "short" "numeral" "class" "wind" "question" "happen" "complete" "ship" "area" "half" "rock" "order" "fire" "south" "problem" "piece" "told" "knew" "pass" "since" "top" "whole" "king" "space" "heard" "best" "hour" "better" "true")
arr_length="${#frequent_letter_combinations[@]}"
# echo "The length of array is: $arr_length"

random_index() {
	random_element=$((RANDOM % arr_length + 1))
	echo $random_element
}

pick_elem () {
	echo ${frequent_letter_combinations[$(random_index)]} 
}


echo "Be as fast as you can !"


check () {
	echo "Gimme usr_num:"
	shlaban
	read usr_num
	while [[ 1 -lt $usr_num ]]; do
		usr_num=$((usr_num-1))
		echo $usr_num
	done

	# picked_elem=$(pick_elem)
	# echo $picked_elem
	# read usr_inpt
	# echo $usr_inpt

	# usr_trimmed="${usr_inpt%" "}"
	# picked_trimmed="${picked_elem%" "}"
	# [ "${usr_inpt}" == "${picked_elem}" ] && echo "Bruh, you got it !" || echo "You....FOOL!"

	# uno_trimmed="${uno%" "}"
	# typed_text_trimmed="${typed_text%" "}"
}

check