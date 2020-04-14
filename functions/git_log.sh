#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function lg {
	#todo: if we are reusing this check then move to a function
	if [ $1 ]; then
		echo $USAGE_NO_OPTIONS_REQUIRED
	fi

	git log
	exit 0
}

function lg_help {
	command="SHOW LOGS"
	usage="lg"
	declare -a descriptions
	descriptions=(
	"Show log of current branch commits."
	"@todo add default options to beautify the log details."
	"@todo move reused check for options not neede to external function/file."
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
