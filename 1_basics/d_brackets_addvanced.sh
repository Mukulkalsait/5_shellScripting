#! /usr/bin/env bash

: <<EOF
Disclamer: This is juis t for learning pourpseoe file.
EOF

# DX: 1. (( ARTHEMETIC + SUBSHELL ))

# Y: A
for ((i = 10; i > 0; i--)); do
  echo "hello $i"
done

# Y: B Running Combine Commands.

for inner_dir in */; do
  (cd "$inner_dir" && ls)
done

cat <<EOF
===========================================================================================================
 Here 
 1. for for inner_dir in */; do => thsi will pass every folder into the billow argument
 2. (cd "$inner_dir" && ls) => cd */ (every directory) and list inside.
===========================================================================================================
EOF
