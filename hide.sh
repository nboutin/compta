#!/bin/sh

if [ $# -lt 1 ] 
then
	echo "Error: missing password argument"
	exit
fi

dest=archive.7z

rm $dest

7z -mhc=on -mhe=on -p"$1" a $dest gnucash_nboutin
7z -mhc=on -mhe=on -p"$1" a $dest template
7z -mhc=on -mhe=on -p"$1" a $dest ofx
