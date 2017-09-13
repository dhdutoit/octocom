#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function mg {
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

	git fetch $remote master
	if [[ $? == 0 ]]; then
		git merge FETCH_HEAD
	fi

	exit 0
}

function mg_help {
	echo usage: oc mg [remote]
	echo "$(printf '\t')"Merge MASTER branch into local branch, from its remote, which defaults to \'origin\' if not provided.
	echo "$(printf '\t')"- Will check if provided remote exists.
	echo "$(printf '\t')"- Will fetch master first and merge FETCH_HEAD, so no local checkout of MASTER is required.
}
