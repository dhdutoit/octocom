#!/bin/bash
# Part of the open-source octocom project
# License to still be decided - 2017
# Copyright David du Toit <dhdutoit@gmail.com> 2016-2017

function co {
	remote="origin"
	branch="master"
	repo=""

	if [ $1 ]; then
		branch=$1
	fi

	if [ $2 ]; then
		#check if the provided remote actually exists
		git ls-remote --exit-code $2 2>/dev/null
		if [ $? != 0 ] && [ $? != 2 ] ; then
			echo remote: octocom could not read from remote $2, please double check everything is ok with the remote and try again..perhaps..?
			exit 1
		fi

		remote=$2
	fi

	#get repo url
	repo=git config --get remote.$remote.url 2>/dev/null

	#check if branch exists on REMOTE
	git ls-remote --exit-code --heads $repo $1 2>/dev/null
	if [ $? == 2 ]; then
		echo branch: could not read from branch $1, please check connection to repo or that branch exists on remote
		exit 1
	else
		#do a fetch in case the branch in new in remote but never checked out lcoally
		ft $remote
	fi

	git checkout $branch
	exit 0
}

function co_help {
	echo "usage: oc co [branch-name] [remote]"
	echo "$(printf '\t')Check if branch exists on the remote and does fetch & checkout of the branch"
	echo "$(printf '\t')If none provided then branch will default to 'master' and remote to 'origin'"
}
