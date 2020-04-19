#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function br {
	git branch
	exit 0
}

function br_help {
	command="BRANCH"
	usage="br"
	declare -a descriptions
	descriptions=(
	"Lists the local branches."
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
