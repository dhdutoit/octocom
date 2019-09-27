#!/bin/bash

function printHelp {
	local command="$1"
  	local usage="$2"
	shift
	shift
	descriptions=("$@")

	echo
	printf "%s\n" "${cyan}${command}${end} : ${yellow}oc ${usage}${end}"

	for i in "${descriptions[@]}"
	do
		printf "%s\t%s\n" "" "${green}${i}${end}"
	done
}

function help {
	for i in "${!GMT_CMD[@]}"
	do
		#call help function of each command to display details
		${i}_help
	done
}

function help_help {
	command="HELP"
	usage="help"
	declare -a descriptions
	descriptions=(
	"Displays this message."
	)

	printHelp "$command" "$usage" "${descriptions[@]}"
}
