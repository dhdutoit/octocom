#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function pl {
	remote="origin"

	if [ $1 ]; then
		#check if the provided remote actually exists
		git ls-remote --exit-code $1 2>$1
		if [ $? != 0 ] && [ $? != 2 ] ; then
			echo remote: could not read from remote $remote, please check connection or access credentials and try again
			exit 1
		fi

		remote=$1
	fi

	git pull $remote "$(git name-rev --name-only HEAD)"
	exit 0
}

function pl_help {
	echo usage: oc pl [remote]
	echo "$(printf '\t')"Pull changes of checked-out branch from its remote, which defaults to \'origin\' if not provided.
	echo "$(printf '\t')"- Will check if provided remote exists.
}
