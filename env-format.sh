#!/bin/bash

printenv PWD
printenv | awk -F "=" '$1 ~ /H/ {print $1}'
