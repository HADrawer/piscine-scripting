#!/bin/bash

if [[ $# -ne 1 ]]; then
  printf "Error: expect 1 argument only!\n" >&2
  exit 1
fi

if [[ ! "$1" =~ ^[0-9]+$ ]]; then
  printf "Error: expect 1 argument only!\n" >&2
  exit 1
fi

students_count="$1"

declare -a names
declare -a grades

for ((i=1; i<=students_count; i++)); do
  read -p "Student Name #$i: " name
  read -p "Student Grade #$i: " grade

  if [[ ! "$grade" =~ ^[0-9]+$ || "$grade" -gt 100 ]]; then
    printf "Error: The grade '%s' is not a valid input. Only numerical grades between 0 and 100 are accepted.\n" "$grade" >&2
    exit 1
  fi

  names+=("$name")
  grades+=("$grade")
done

for ((i=0; i<students_count; i++)); do
  name="${names[$i]}"
  grade="${grades[$i]}"

  if [[ "$grade" -ge 90 ]]; then
    printf "%s: You did an excellent job!\n" "$name"
  elif [[ "$grade" -ge 70 ]]; then
    printf "%s: You did a good job!\n" "$name"
  elif [[ "$grade" -ge 50 ]]; then
    printf "%s: You need a bit more effort!\n" "$name"
  else
    printf "%s: You had a poor performance!\n" "$name"
  fi
done
