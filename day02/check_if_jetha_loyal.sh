#!/bin/bash

<< disclaimer
This is justy for infotainment purpose
disclaimer

#This is function definition
function is_loyal() {
read -p "$1 ka pyaar %" pyaar
read -p "Enter the bandi: " bandi
if [[ $bandi == "daya bhabhi" ]];
then
	echo "$1 is loyal"
elif [[ $pyaar -ge 100  ]];
then
	echo "$1 i Loyal"
else
	echo "$1 is not loyal"
fi
}

#This is a function call
is_loyal "tom"

