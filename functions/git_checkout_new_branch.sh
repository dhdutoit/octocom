#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function nb {
	if [ -z $1 ]; then
		echo usage: octocom wonders what you want to call the new branch..
		exit 1
	fi

	git checkout -b $1
	exit 0
}

function nb_help {
	command="CHECKOUT -b (new branch)"
	usage="nb"
	declare -a descriptions
	descriptions=(
	"Create a new branch, from current branch, locally."
	"@todo find a way to create new local branch from a remote brach (not checked out)"
	"@todo to get list or remote branches the refs are needed from 'git branch -a'"
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
