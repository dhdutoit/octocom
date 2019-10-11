#!/bin/bash

red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
magenta=$'\e[1;35m'
cyan=$'\e[1;36m'
end=$'\e[0m'

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

	if [ $1 ]; then
		#show specific command help details
		$1_help
	else
		for i in "${!GMT_CMD[@]}"
		do
			#call help function of each command to display details
			${i}_help
		done
	fi
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
