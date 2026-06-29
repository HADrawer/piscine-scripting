#!/bin/bash

if [[ $# -ne 2 ]]; then
  printf "Error: expect 2 arguments\n" >&2
  exit 1
fi

flag="$1"
username="$2"

case "$flag" in
  -e)
    if getent passwd "$username" > /dev/null; then
      printf "yes\n"
    else
      printf "no\n"
    fi
    ;;
  -i)
    getent passwd "$username"
    ;;
  *)
    printf "Error: unknown flag\n" >&2
    exit 1
    ;;
esac
