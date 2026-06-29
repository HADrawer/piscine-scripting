#!/bin/bash

if [[ $# -ne 2 ]]; then
  printf "Error: The script only works with two arguments!\n"
  exit 1
fi

if [[ ! "$1" =~ ^-?[0-9]+([.][0-9]+)?$ || ! "$2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
  printf "Error: Only two numeric arguments are acceptable!\n"
  exit 1
fi

comparison=$(awk -v a="$1" -v b="$2" 'BEGIN {
  if (a > b) print ">"
  else if (a < b) print "<"
  else print "="
}')

printf "%s %s %s\n" "$1" "$comparison" "$2"
