#!/bin/bash

#todo: find out if one can list/autocomplete known remote repo/project URLs from a server(?)
function cn {

	if [ -z $1 ]; then
		echo usage: octocom wonders what repo you wish to clone..?
		exit 1
	else 
		repo_url=$1
	fi

	destination="."

	if [ $2 ]; then
		destination=$2
	fi

	git clone --progress $repo_url $destination
	exit 0
}