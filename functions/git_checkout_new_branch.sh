#!/bin/bash

#NOTE: 	Creating a new branch from remote requires first getting the available remote refs `git branch -a`
#		and then using the prefix of 'origin/' to the specified branch name.
#NOTE2: Is it possible to auto-complete local command from list of available remote branches
function nb {

	if [ -z $1 ]; then
		echo usage: octocom wonders what you want to call the new branch..
		exit 1
	fi

	git checkout -b $1
	exit 0
}

function nb_help {
	echo @todo add help description
}
