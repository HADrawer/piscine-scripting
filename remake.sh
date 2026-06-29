#!/bin/bash

if [[ $# -ne 1 || ! -d "$1" ]]; then
  printf "Error\n"
  exit 1
fi

DIR="$1"

touch "$DIR/ciao"
mkdir -p "$DIR/mamma"
touch "$DIR/guarda"
touch "$DIR/come"
mkdir -p "$DIR/mi"
touch "$DIR/diverto"

chmod 442 "$DIR/ciao"
chmod 777 "$DIR/mamma"
chmod 400 "$DIR/guarda"
chmod 642 "$DIR/come"
chmod 452 "$DIR/mi"
chmod 421 "$DIR/diverto"

touch -t 202601010001 "$DIR/ciao"
touch -t 202601020001 "$DIR/mamma"
touch -t 202601030001 "$DIR/guarda"
touch -t 202601040001 "$DIR/come"
touch -t 202601050001 "$DIR/mi"
touch -t 202601060001 "$DIR/diverto"
