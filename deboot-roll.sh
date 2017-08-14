#!/bin/bash

if [ $(id -u) -eq 0 ]; then
	echo "root bro... rolling out"
else
	echo "not root bro - stop here"
	exit 1
fi

packages_list=









