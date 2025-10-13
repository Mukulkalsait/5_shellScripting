#! /usr/bin/env bash

: <<EOF
Disclamer this file is only created specifically for NixShell
EOF
function cloning_from_git_and_get_in() {
  function clone_now() {
    echo "🚀 Cloning Project"
    git clone https://github.com/LondheShubham153/django-notes-app.git
  }
  clone_now
  cd ./django-notes-app/ || return
}

function installing_requirements() {
  echo " installing dependencies =>"
  nix-shell -p podman nginx
}
function starting_requirements() {
  sudo systemctl start podman* nginx
}
function diployment() {
  podman build -t notes_app .
  podman run -d -p 8000:8000 notes-app:latest
}

# B: calling.
cloning_from_git_and_get_in
