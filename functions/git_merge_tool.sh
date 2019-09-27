#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function mt {
	git mergetool
	exit 0
}

function mt_help {
	command="MERGETOOL"
	usage="mt"
	declare -a descriptions
	descriptions=("Starts the 'git mergetool' that is locally setup.")

	printHelp "$command" "$usage" "${descriptions[@]}"
}
