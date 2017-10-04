#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function ra {
	if [ -z $1 ]; then
		echo usage: octocom does not know what you want to call the new remote..?
		exit 1
	fi

	#todo: check that the given name does not already exist in list of know remotes

	if [ -z $2 ]; then
		echo usage: octocom thinks you may have forgotten to give the repo url of the remote to add..?
		exit 1
	fi

	#todo: loop through existing remotes and determine if given url compares to any of them
	#NOTE: default checks against origin remote url
	repo=git config --get remote.origin.url 2>/dev/null
	if [ repo == $2 ]; then
		echo usage: er..you are trying to add a remote url that octocom already knows of..
	fi

	git remote add $1 $2
	exit 0
}

function ra_help {
	echo "usage: oc ra [remote-name] [remote-url]"
	echo "$(sprintf '\t')create a new local remote using remote url"
	echo "$(sprintf '\t') - todo check that the given remote name does not already exist in list of known remotes"
}
