#!/bin/bash

result=$(expr "$1" + "$2")
printf "%s\n" "$result"
