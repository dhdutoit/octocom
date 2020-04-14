#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function cm {
	if [ $1 ]; then
		echo $USAGE_NO_OPTIONS_REQUIRED
	fi

	git commit -a
	exit 0
}

function cm_help {
	command="COMMIT"
	usage="cm"
	declare -a descriptions
	descriptions=(
	"Do an annotated (-a) commit with no additional options"
	"@todo allow specifying of files to commit (no -a option)"
	"@todo add option to auto push after successful commit"
	"@todo list files eligable for staging/adding and selection to choose what to do with each"
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
