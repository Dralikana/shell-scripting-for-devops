#!/bin/bash

<< comment
$1 is argument 1which is folder name
$2 is start range
$3 is start rangeask

comment

for (( num=$2 ; num<=$3 ; num++ ))
do
	mkdir "$1$num"
done

