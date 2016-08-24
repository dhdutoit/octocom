#!/bin/bash


#CLEANSE THE LAND OF THE UN-BELIEVERS!! 
function cl {
	
	if [ -z $1 ]; then
		echo param: You must specify which branch type to clean, example 'feature' or 'bugfix'
		exit 1
	fi

	regex=^\\s*$1/
	git branch --merged | grep $regex | xargs git branch -d
	exit 0
}