#! /usr/bin/env bash

: <<EOF
Disclamer: This is just a test file.
EOF

function crete_dir_function() {
  read -p "Folder Name :" new_folder_name
  mkdir "$new_folder_name"
}

if ! crete_dir_function; then
  echo "❌ Folder did not creted."
  exit 1
  # Y: exit code can be anythign 0, 1, 2, 3, 300;
else
  echo "✅ Folder has been successfuly created."
fi
