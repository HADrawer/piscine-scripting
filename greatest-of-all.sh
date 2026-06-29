#!/bin/bash

largest=0

for i in {1..10}; do
  read -p "Enter a number: " num

  if [[ ! "$num" =~ ^[0-9]+$ ]]; then
    printf "ERROR: Invalid input only positive numerical characters are allowed\n"
    exit 1
  fi

  if [[ "$num" -gt 10000 ]]; then
    printf "ERROR: The number entered is too large\n"
    exit 1
  fi

  if [[ "$num" -gt "$largest" ]]; then
    largest="$num"
  fi
done

printf "The largest number is: %s\n" "$largest"