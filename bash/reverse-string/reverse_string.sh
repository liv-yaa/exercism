#!/usr/bin/env bash
# https://exercism.io/my/solutions/2d913bd161ce49b0bf85fec756e90da9
# Reverse a String; for example: input: "cool" output: "looc"
main () {
    # your main function code here
    # "I'm in $(pwd)"
    if [[ $# == 2 ]]; then
        echo "One for $1, one for me."
    elif [[ -n $* ]]; then
        echo "One for $1, one for me."
    else
        echo "One for you, one for me."
    fi
}

reverseString () {
    echo $1 | rev
    
}

# call main with all of the positional arguments
reverseString "$@"
reverseString "Mr. Bean"
reverseString
reverseString "hunter" "beans"