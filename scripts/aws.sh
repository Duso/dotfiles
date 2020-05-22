#!/bin/bash

env=$1
what=$2

if [ "$what" == "db" ]; then
	if [ "$env" == "dev" ]; then
		aws-okta exec datauploader-dev -- aws ssm start-session --target=i-00c48cf9238531e45
	elif [ "$env" == "stage" ] || [ $env == "staging" ]; then
		aws-okta exec datauploader-staging -- aws ssm start-session --target=i-07c0595c3c96a3703
	elif [ "$env" == "prod" ]; then
		aws-okta exec datauploader-prod -- aws ssm start-session --target=i-09994f2d92e34cb50
	else
		echo unrecongized env $env
	fi
else
	if [ "$env" == "dev" ]; then
		aws-okta exec datauploader-dev -- bash
	elif [ "$env" == "stage" ] || [ "$env" == "staging" ]; then
		aws-okta exec datauploader-staging -- bash
	elif [ "$env" == "prod" ]; then
		aws-okta exec datauploader-prod -- bash
	else
		echo unrecongized env $env
	fi
fi


