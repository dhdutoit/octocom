#!/bin/bash

#todo: make the git log show minimalistic out put by default
#todo: add ability to do authors
function lg {
	#todo: if we are reusing this check then move to a function
	if [ $1 ]; then
		echo $USAGE_NO_OPTIONS_REQUIRED
	fi

	git log
	exit 0
}

function lg_help {
	echo @todo add help description
}
