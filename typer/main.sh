#!/bin/bash

frequent_char_sets=("th" "he" "in" "er" "an" "re" "ed" "on" "es" "st" "en" "at" "to" "nt" "ha" "ou" "ea" "ng" "ing" "igh" "ough" "tion" "tio" "ter" "est")
frequent_letter_combinations=("th" "he" "in" "er" "an" "re" "ed" "on" "es" "st" "en" "at" "to" "nt" "ha" "ou" "ea" "ng" "ing" "igh" "ough" "tion" "tio" "ter" "est" "ous" "all" "ive" "ity" "ate" "ful" "ble" "ant" "ers" "ati" "ver" "com" "por" "her" "his" "with" "for" "that" "this" "you" "but" "not" "are" "have" "one" "had" "all" "was" "were" "out" "some" "what" "there" "they" "will" "would" "about" "which" "when" "your" "can" "said" "each" "she" "how" "their" "them" "then" "these" "two" "more" "been" "make" "like" "into" "time" "just" "people" "year" "way" "could" "first" "other" "than" "its" "over" "new" "also" "after" "work" "well" "way" "even" "much" "many" "most" "back" "before" "through" "day" "used" "good" "world" "under" "back" "through" "because" "same" "take" "place" "own" "great" "us" "too" "high" "line" "of" "a" "the" "and" "to" "in" "is" "it" "you" "that" "he" "was" "for" "on" "are" "with" "as" "I" "his" "they" "be" "at" "one" "have" "this" "from" "or" "had" "by" "hot" "but" "some" "what" "there" "we" "can" "out" "other" "were" "all" "your" "when" "up" "use" "word" "how" "said" "an" "each" "she" "which" "do" "their" "time" "if" "will" "way" "about" "many" "then" "them" "write" "would" "like" "so" "these" "her" "long" "make" "thing" "see" "him" "two" "has" "look" "more" "day" "could" "go" "come" "did" "my" "number" "sound" "no" "most" "people" "write" "over" "know" "water" "than" "call" "first" "who" "may" "down" "side" "been" "now" "find" "head" "stand" "own" "page" "should" "country" "found" "answer" "school" "grow" "study" "still" "learn" "plant" "cover" "food" "sun" "four" "between" "state" "keep" "eye" "never" "last" "let" "thought" "city" "tree" "cross" "farm" "hard" "start" "might" "story" "saw" "far" "sea" "draw" "left" "late" "run" "don't" "while" "press" "close" "night" "real" "life" "few" "north" "book" "carry" "took" "science" "eat" "room" "friend" "began" "idea" "fish" "mountain" "stop" "once" "base" "hear" "horse" "cut" "sure" "watch" "color" "face" "wood" "main" "enough" "plain" "girl" "usual" "young" "ready" "above" "ever" "red" "list" "though" "feel" "talk" "bird" "soon" "body" "dog" "family" "direct" "pose" "leave" "song" "measure" "door" "product" "black" "short" "numeral" "class" "wind" "question" "happen" "complete" "ship" "area" "half" "rock" "order" "fire" "south" "problem" "piece" "told" "knew" "pass" "since" "top" "whole" "king" "space" "heard" "best" "hour" "better" "true")

echo "How many words ?"
read word_count

get_random_index() {
	arr_length=${#frequent_letter_combinations[@]}
    echo $((RANDOM % $arr_length))
}

add_set() {
    local random_index
    local result=""
    local num_words=$word_count  # Number of words specified by the user

    for _ in $(seq "$num_words"); do
        random_index=$(get_random_index)
        result+="${frequent_letter_combinations[$random_index]} "
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
# Refactored IF statement into oneliner  
[ "$typed_text_trimmed" == "$uno_trimmed" ] && echo "You got it !" || echo "Try again !"

# if [ "$typed_text_trimmed" == "$uno_trimmed" ]; then
#     echo "You got it!"
# else
#     echo "Try again!"
# fi


