#!/bin/bash

function df {

	#todo: if we are reusing this check then move to a function
	if [ $1 ]; then
		echo $USAGE_NO_OPTIONS_REQUIRED
	fi

	git diff
	exit 0
}

function df_help {
	echo @todo add help description
}
