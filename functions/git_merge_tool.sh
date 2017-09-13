#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function mt {
	git mergetool
	exit 0
}

function mt_help {
	echo usage: oc mt
	echo "$(printf '\t')"Open the mergetool for current branch in order to deal with conflicts.
	echo "$(printf '\t')"- Will check if provided remote exists.
	echo "$(printf '\t')"- @todo add checks and setup steps if merge tool does not set up.
}
