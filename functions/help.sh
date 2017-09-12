#!/bin/bash

function help {
	for i in "${!GMT_CMD[@]}"
	do
		#call help function of each command to display details
		${i}_help
	done
}

function help_help {
	echo @todo add help description
}
