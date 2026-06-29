#!/bin/bash

curl -s https://learn.reboot01.com/assets/superhero/all.json | jq '.[] | select(.id == 1)' | grep -E '"name":|"power":'
printf "\n"
