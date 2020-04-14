#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function st {
	# list files with STATUS
    # ask for file name to add from list
    # accept -a for adding everything in current folder

	#no option is seen as normal status command
	if [ -z $1 ]; then
		git status --show-stash -v -v | less
		exit 0
	fi

	#available options are:
	#u - check for and show only untracked files
	#a - add any untracked files
	if [ 'u' == $1 ]; then
		UNTRACKED="$(git ls-files --others --exclude-standard)"
		if [ -z "$UNTRACKED" ]; then
			echo There are no untracked files/changes at this point.
		else
			#add colour to the output of the list for readability
			git ls-files -o --exclude-standard
			read -e -p "Would you like to add these untracked files/changes?" YN
			if [[ $YN == "y" || $YN == "Y" ]]; then
				git add $UNTRACKED
			fi
		fi
	fi

	exit 0
}

function st_help {
	command="STATUS"
	usage="st [NOT FUNCTIONAL AT THE TIME]"
	declare -a descriptions
	descriptions=(
	"@todo REVIEW AND IMPLEMENT THIS OPTION"
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
