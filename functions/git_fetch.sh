#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function ft {
	remote="origin"

	if [ $1 ]; then
		#check if the provided remote actually exists
		git ls-remote --exit-code $1 2>/dev/null
		if [ $? != 0 ] && [ $? != 2 ] ; then
			echo remote: could not read from remote $1, please check connection or access credentials and try again..perhaps..?
			exit 1
		fi

		remote=$1
	fi

	git fetch $remote
}

function ft_help {
	command="FETCH"
	usage="ft [remote]"
	declare -a descriptions
	descriptions=(
	"Fetch details from remote, which defaults to \'origin\' if not provided."
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
