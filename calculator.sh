#!/bin/bash

do_add() {
  printf "%s\n" $(($1 + $2))
}

do_sub() {
  printf "%s\n" $(($1 - $2))
}

do_mult() {
  printf "%s\n" $(($1 * $2))
}

do_divide() {
  printf "%s\n" $(($1 / $2))
}

main() {
  if [[ $# -ne 3 ]]; then
    printf "Error: expect 3 arguments\n" >&2
    exit 1
  fi

  if [[ ! "$1" =~ ^-?[0-9]+$ || ! "$3" =~ ^-?[0-9]+$ ]]; then
    printf "Error: invalid number\n" >&2
    exit 4
  fi

  case "$2" in
    "+")
      do_add "$1" "$3"
      ;;
    "-")
      do_sub "$1" "$3"
      ;;
    "*")
      do_mult "$1" "$3"
      ;;
    "/")
      if [[ "$3" -eq 0 ]]; then
        printf "Error: division by 0\n" >&2
        exit 2
      fi
      do_divide "$1" "$3"
      ;;
    *)
      printf "Error: invalid operator\n" >&2
      exit 3
      ;;
  esac
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
