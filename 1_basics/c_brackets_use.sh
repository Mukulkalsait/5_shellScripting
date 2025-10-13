#! /usr/bin/env bash

: <<EOF
DISCLAMER: This file is only for experimental purpose
EOF

# Y: 1. subshell => the command will only print inside this brace and outside its null |  here with the directory DID not change actualy.
(cd ./ && ls -altir)

# Y: 2. (( use this for math ))

read -p "Choose 2 Numbers 'a' and 'b' " a b

if ((a > b)); then
  echo "a is greater :${a}"
else
  echo "b is greater :${b}"
fi

((a++)) # G: a incrimented.
echo "also a++ = $a"

# Y: 3. Condictional / Loops use [[]]

read -p "What is your name? " name
if [[ $name == "kaiwalya" || $name == "mukul" ]]; then
  echo "${name}, Hi there!"
else
  echo "Unknown User. ⚠ Please Contact Admin."
fi

# Y: 4. { Multi commands in same line; seperated with';' }

{
  echo "Start_time:"
  date

  echo "========================="
  echo "|  Start_time: $(date)  |"
  echo "========================="
}
