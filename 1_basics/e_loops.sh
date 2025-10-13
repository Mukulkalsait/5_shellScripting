#! /usr/bin/env bash

: <<EOF
Disclamer: thsi is just a test file.
EOF

read -p "chose any number in a range of  1-100" num

if ((0 < num && num <= 100)); then
  x=1
  while [[ $x -le $num ]]; do
    echo "$x"
    ((x++))
  done
else
  echo "Number is out of range."
fi
