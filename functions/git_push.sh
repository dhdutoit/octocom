#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function ps {
	remote="origin"

	if [ $1 ]; then
		#check if the provided remote actually exists
		git ls-remote --exit-code $1 2>$1
		if [ $? != 0 ] && [ $? != 2 ] ; then
			echo remote: could not read from remote $1, please check connection or access credentials and try again
			exit 1
		fi

		remote=$1
	fi

	git push $remote "$(git name-rev --name-only HEAD)"
	exit 0
}

function ps_help {
	echo usage: oc ps [remote]
	echo "$(printf '\t')"Push changes of checked-out branch to its remote, which defaults to \'origin\' if not provided.
	echo "$(printf '\t')"- Will check if provided remote exists.
	echo "$(printf '\t')"- @todo Add check for any added/unstaged work and inform user..
	echo "$(printf '\t')"- @todo If possible list the unsatged files and allow input to auto add them..
}
