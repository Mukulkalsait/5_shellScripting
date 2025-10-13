#! /usr/bin/env bash

: <<EOF
Disclamer: thsi is just a test file.
EOF

read -p "chose any number in a range of  1-100" num

function print_ever_till_given_arg() {
  for ((y = 0; y <= num; y++)); do
    if ((y % 2 == 0)); then
      echo "$y"
    fi
  done
  echo "--x--"
}

function print_all_number_till_given_arg() {
  if ((0 < num && num <= 100)); then
    x=1
    while [[ $x -le $num ]]; do
      echo "$x"
      ((x++))
    done
    echo "--x--"
  else
    echo "Number is out of range."
  fi
}

function print_information() {
  echo "--------------------------------------------------------------"
  echo "|  Calling can only happen after defining function in bash.  |"
  echo "--------------------------------------------------------------"
}

# B: function calling:
print_ever_till_given_arg
print_all_number_till_given_arg
print_information
