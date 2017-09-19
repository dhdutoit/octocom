#!/bin/bash

#TODO: add option to auto push after commit
#TODO: add option to ADD & STAGE files before commit(?)
#NOTE: make this as simple a command as possible (it gets used a lot)
function cm {

	if [ $1 ]; then
		echo $USAGE_NO_OPTIONS_REQUIRED
	fi

	git commit -a
	exit 0
}

function cm_help {
	echo usage: oc cm
	echo "$(printf '\t')"Do an annotated \(\-a\) commit with no additional options.
	echo "$(printf '\t')"- @todo allow specifying of files to commit \(no \-a option\)
}
