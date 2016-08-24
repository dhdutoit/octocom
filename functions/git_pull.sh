#!/bin/bash

#GIT PULL changes for current branch, defaulting to 'origin' as REMOTE
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

	git pull $remote $(git name-rev --name-only HEAD)
	exit 0
}