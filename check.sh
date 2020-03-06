#!/bin/sh
echo "Checking file \"$1\""
VALUE="$(sha256sum $1)"
VALUE=${VALUE:0:64}
echo "Checksum: $2"
echo "SHA256:   $VALUE"
if [ "$VALUE" = "$2" ]; then
	tput setaf 2;
	echo "Pass!"
else
	tput setaf 1;
	echo "Failed!"
fi
