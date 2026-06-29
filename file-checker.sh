#!/bin/bash

if [[ $# -eq 0 ]]; then
  printf "Error: No file provided\n"
elif [[ ! -e "$1" ]]; then
  printf "File does not exist\n"
else
  printf "File exists\n"

  if [[ -r "$1" ]]; then
    printf "File is readable\n"
  else
    printf "File is not readable\n"
  fi

  if [[ -w "$1" ]]; then
    printf "File is writable\n"
  else
    printf "File is not writable\n"
  fi

  if [[ -x "$1" ]]; then
    printf "File is executable\n"
  else
    printf "File is not executable\n"
  fi
fi
