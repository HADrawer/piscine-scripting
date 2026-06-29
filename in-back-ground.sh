#!/bin/bash

nohup sh -c 'cat facts | grep "moon" && printf "The moon fact was found!\n" >> output.txt' &
wait
