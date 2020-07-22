#!/usr/bin/env bash
# https://exercism.io/my/solutions/2d913bd161ce49b0bf85fec756e90da9
# Reverse a String; for example: input: "cool" output: "looc"

reverseString () {
    # Get the command line arguments
    string=$@
    len=${#string}

    for ((i = $len - 1; i >= 0; i--))
        do
        # Extract a single character
        # echo ${string:$i:1}
        reverse="$reverse${string:$i:1}"
        done
    echo "$reverse"
    echo ""
}

# call main with all of the positional arguments
# reverseString "$@"
# reverseString "Mr. Bean"
# reverseString
# reverseString "hunt*er" "beans"
# reverseString "hunt * er" "beans" # Globs only work if surrounded 

# reverseString " a \*  b"
reverseString " a *  b" # error needs escape character