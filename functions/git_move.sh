#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function mv {
    if [ -z $1 ]; then
		echo usage: what file should I move for you?
		exit 1
	fi

    if [ -z $2 ]; then
        echo usage: where would you like me to move the file to?
        exit 1
    fi

    if [ "$(git ls-files --error-unmatch $1 2>/dev/null)" = 1 ]; then
        git mv -v $1 $2
    	exit 0
    else
        echo OOPS! you need to add the file to move to source control, before you can move it.
    fi
}

function mv_help {
	command="MOVE"
	usage="mv"
	declare -a descriptions
	descriptions=(
	"Move a file(s) to another location or to rename it."
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
