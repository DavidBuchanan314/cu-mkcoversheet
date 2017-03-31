#!/bin/bash

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

mkdir -p /usr/share/mkcoversheet
cp template.pdf /usr/share/mkcoversheet/
cp mkcoversheet.sh /usr/local/bin/mkcoversheet
