#!/bin/bash

if [ -f "$1" ] && [ -x "$1" ]; then
  printf "File is executable\n"
else
  printf "File is not an executable or does not exist\n"
fi
