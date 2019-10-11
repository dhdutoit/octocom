#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function cn {
	if [ -z $1 ]; then
		echo usage: octocom wonders what repo you wish to clone..?
		exit 1
	else
		repo_url=$1
	fi

	destination="."

	if [ $2 ]; then
		destination=$2
	fi

	git clone --progress $repo_url $destination
	exit 0
}

function cn_help {
	command="CLONE"
	usage="cn [repo-url] [destination]"
	declare -a descriptions
	descriptions=(
	"Clone provided [repo-url] into [location]. Location will default to current folder if none provided."
	"@todo determine if it would be possible to select [repo-url] from a list of repos available on a server/project."
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
