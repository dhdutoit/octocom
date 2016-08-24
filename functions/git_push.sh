#!/bin/bash

#GIT PUSH changes of the current checked-out branch to its REMOTE (default 'origin') 
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

	git push $remote $(git name-rev --name-only HEAD)
	exit 0
}