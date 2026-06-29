#!/bin/bash

colors=("red" "blue" "green" "white" "black")

if [[ $# -ne 1 ]]; then
  printf "Error\n"
  exit 1
fi

if [[ ! "$1" =~ ^[0-9]+$ ]]; then
  printf "Error\n"
  exit 1
fi

position=$((10#$1))

if [[ $position -lt 1 || $position -gt ${#colors[@]} ]]; then
  printf "Error\n"
  exit 1
fi

index=$((position - 1))
printf "%s\n" "${colors[$index]}"
