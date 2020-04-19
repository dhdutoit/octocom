#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function ps {
	remote="origin"

	if [ "$1" ]; then
		#check if the provided remote actually exists
		git ls-remote --exit-code "$1" 2>/dev/null
		if [ $? != 0 ] && [ $? != 2 ] ; then
			echo remote: could not read from remote "$1", please check connection or access credentials and try again
			exit 1
		fi

		remote=$1
	fi

	git push "$remote" "$(git name-rev --name-only HEAD)"
	exit 0
}

function ps_help {
	command="PUSH"
	usage="ps [remote]"
	declare -a descriptions
	descriptions=(
	"Push changes of lcoal branch to its remote"
	"If remote not provided ps will default to origin of local brach"
	"Will check if provided remote exists before attemping to push data"
	"@todo Add check for any added/unstaged work and inform user !!"
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
