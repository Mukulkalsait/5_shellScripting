#! /usr/bin/env bash

# Y: Comment with Normal Char:
: <<EOF
I can write whatever i want here and it will not print.
EOF

# Y: Comment with Command:
cat <<EOF
But whatever i write here will be exicuted with "cat" command which is bat in this case.
EOF

echo "Description ended."

read -p "inter name number_of_repetation" name repeater

for ((num = 1; num <= repeater; num++)); do
  mkdir "$name$num"
done
