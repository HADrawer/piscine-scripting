#!/bin/bash

if [[ $# -ne 1 || ! "$1" =~ ^[0-9]+$ || "$1" -lt 1 || "$1" -gt 100 ]]; then
  printf "Error: wrong argument\n"
  exit 1
fi

secret="$1"

for ((try=1; try<=5; try++)); do
  tries_left=$((6 - try))

  while true; do
    printf "Enter your guess (%d tries left):\n" "$tries_left"
    read guess

    if [[ "$guess" =~ ^[0-9]+$ && "$guess" -ge 1 && "$guess" -le 100 ]]; then
      break
    fi
  done

  if [[ "$guess" -eq "$secret" ]]; then
    printf "Congratulations, you found the number in %d moves!\n" "$try"
    exit 0
  elif [[ "$guess" -gt "$secret" ]]; then
    printf "Go down\n"
  else
    printf "Go up\n"
  fi
done

printf "You lost, the number was %s\n" "$secret"
