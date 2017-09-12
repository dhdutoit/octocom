#!/bin/bash

function mg {

	#todo: move remote verification to seperate function(?)
	remote="origin"

	if [ $2 ]; then
		#check if the provided remote actually exists
		git ls-remote --exit-code $2 2>/dev/null
		if [ $? != 0 ] && [ $? != 2 ] ; then
			echo remote: could not read from remote $2, please check connection or access credentials and try again..perhaps..?
			exit 1
		fi

		remote=$2
	fi

	git fetch $remote master
	if [[ $? == 0 ]]; then
		git merge FETCH_HEAD
	fi

	exit 0
}

function mg_help {
	echo @todo add help description
}
