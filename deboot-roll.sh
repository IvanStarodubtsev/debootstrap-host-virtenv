#!/bin/bash -evx

if [ $(id -u) -eq 0 ]; then
	echo "root bro... rolling out"
else
	echo "not root bro - stop here"
	exit 1
fi

if [ ! $# -eq 2 ]; then
	location=$1
	echo "location is $location"
else
	echo "no location is given"
	exit 2
fi

# wipe the target with no mercy (if it exists)
if [ -d $location ]; then
	rm -rf $location
fi

# this is the packages list which affects ATS and its testing
packages_list='libtcl8.6 libpcre3 libssl1.0.0 bind9 iproute2 net-tools tcpdump iputils-ping iputils-arping'

debootstrap --variant=minbase --arch=amd64 --include="$packages_list" xenial "$location" http://archive.ubuntu.com/ubuntu/

