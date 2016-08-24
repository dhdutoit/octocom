#!/bin/bash

function checkDefaultConfigSettings {

	#inform the user if git is not installed on the host
	#NOTE: perhaps display links to install/download git in feedback(?)
	git --version >/dev/null
	if [ $? -ne 0 ]; then 
		echo $NO_GIT_FOUND
		exit 1
	fi

	if [ -z $(git config --get user.email) ]; then
		echo $CONFIG_QUESTION_EMAIL_ADDRESS
		read email
		if [ -z $email ]; then
			echo $CONFIG_UNKNOWN_EMAIL_ADDRESS
			exit 1
		fi

		git config --global user.email $email
	fi

	if [[ -z $(git config --get user.name) ]]; then
		echo $CONFIG_QUESTION_REAL_NAME
		read username
		if [ -z "$username" ]; then
			echo CONFIG_UNKNOWN_REAL_NAME
			exit 1
		fi

		git config --global user.name "$username"
	fi

	#check if a gpg key exists and create one if not
	if [[ -z $(gpg --list-key) ]]; then
		gpg --gen-key
		exit 0
	fi
}