#!/bin/bash

if [[ $# -lt 2 ]]; then
  printf "Error: two numbers must be provided\n"
elif [[ ! "$1" =~ ^-?[0-9]+$ || ! "$2" =~ ^-?[0-9]+$ ]]; then
  printf "Error: both arguments must be integers\n"
elif [[ "$2" =~ ^-?0+$ ]]; then
  printf "Error: division by zero is not allowed\n"
else
  printf "%s / %s\n" "$1" "$2" | bc
fi
