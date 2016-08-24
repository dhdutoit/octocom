#!/bin/bash

function help {

	for i in "${!GMT_CMD[@]}"
	do
		printf "\ncommand $i:\n\t${GMT_CMD[$i]}\n"
	done
}