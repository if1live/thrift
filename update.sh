#!/bin/bash

REPO=https://git-wip-us.apache.org/repos/asf/thrift.git

if [ -d "src" ]; then
	cd src && git pull origin master && cd ..
else
	git clone $REPO src
fi

cp -r src/lib/nodejs/* .

# ignore file list
rm Makefile.am

# get thrift version
cd src && git rev-parse HEAD > ../version && cd ..
