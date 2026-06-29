#!/bin/bash

find . -type f -name "*.txt" -exec basename {} .txt \;
printf "\n"
