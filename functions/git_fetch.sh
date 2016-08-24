#!/bin/bash

function ft {

	remote="origin"

	if [ $1 ]; then
		remote=$1
	fi

	git fetch $remote
}