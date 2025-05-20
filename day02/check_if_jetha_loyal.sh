#!/bin/bash

<< disclaimer
This is justy for infotainment purpose
disclaimer

read -p "jetha ka pyaar %" pyaar
read -p "Enter the bandi: " bandi
if [[ $bandi == "daya bhabhi" ]];
then
	echo "jetha is loyal"
elif [[ $pyaar -ge 100  ]];
then
	echo "jetha i Loyal"
else
	echo "jetha is not loyal"
fi

