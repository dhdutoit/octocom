#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

#CLEANSE THE LAND OF THE UN-BELIEVERS!! :)
function cl {
	if [ -z $1 ]; then
		echo param: You must specify which branch type to clean, example 'feature' or 'bugfix'
		exit 1
	fi

	regex="^\\s*$1/"
	git branch --merged | grep $regex | xargs git branch -d
	exit 0
}

function cl_help {
	command="DELET BRANCHES"
	usage="cl [branch-type]"
	declare -a descriptions
	descriptions=(
	"Delete all local branches of type [branch-type], that have been merged."
	"Example: [branch-type] would be the 'feature' in 'feature/adding-help-text'."
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
