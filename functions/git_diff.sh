#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function df {
	if [ $1 ]; then
		echo $USAGE_NO_OPTIONS_REQUIRED
	fi

	git diff
	exit 0
}

function df_help {
	echo "usage: oc df"
	echo "$(printf '\t')Show diff of local, unversioned, changes to files."
	echo "$(printf '\t')- @todo combine status with diff output in a nice way"
}
