#!/usr/bin/env bash

arr=("red" "blue" "green" "white" "black")

if [[ $# -ne 1 ]]; then
  printf "Error\n"
elif [[ ! "$1" =~ ^[0-9]+$ ]]; then
  printf "Error\n"
elif [[ "$1" == "1" ]]; then
  printf "%s\n" "${arr[0]}"
elif [[ "$1" == "2" ]]; then
  printf "%s\n" "${arr[1]}"
elif [[ "$1" == "3" ]]; then
  printf "%s\n" "${arr[2]}"
elif [[ "$1" == "4" ]]; then
  printf "%s\n" "${arr[3]}"
elif [[ "$1" == "5" ]]; then
  printf "%s\n" "${arr[4]}"
else
  printf "Error\n"
fi
