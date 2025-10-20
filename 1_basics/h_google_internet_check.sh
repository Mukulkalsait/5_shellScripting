#! /usr/bin/env bash

: <<EOF
Disclamer = Test file but can be used for real.
EOF

function check_google() {
  if
    ping -c 5 -i 0.2 google.co.in | grep -q '0%'
  then
    echo "🚀 Network is Up."
  else
    echo "⚠ Network is down"
  fi
}

check_google
