#!/bin/bash


export MY_MESSAGE="Hello World"
export MY_NUM=100
export MY_PI=3.142

printenv | grep "^MY_NUM="
printenv | grep "^MY_PI="
printenv | grep "^MY_MESSAGE="