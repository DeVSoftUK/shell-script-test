#!/bin/bash

normcopy="False"
fileextcopy="False"

##SHOW CALANDER FUNCTION###
function showCal {
	cal
	main
}

function copyStuff {
	if [ "$normcopy" = "True" ]
	then
	echo "Enter File or Directory Path To Copy"
	echo -n ""
	read path1
	echo "Enter Directory To Copy To"
	echo -n ""
	read path2
	cp $path1 $path2
	normcopy="False"
	fi
	if [ "$fileextcopy" = "True" ]	
	then
	echo "Enter File Extension To Copy"
	echo -n ""
	read ext
	echo "Enter File or Directory Path To Copy"
	echo -n ""
	read path1
	echo "Enter Directory To Copy To"
	echo -n ""
	read path2
	cp *.$ext $path1 $path2
	fileextcopy="False"
	fi
	main
}

###COMMANDS HANDLER###
function main {
	echo "Enter Your Command"
	echo -n ""
	read com
		
	if [ "$com" = "cal" ]
	then
	showCal
	fi
	if [ "$com" = "copy" ]
	then
	normcopy="True"
	copyStuff
	fi
	if [ "$com" = "copy -e" ]
	then
	fileextcopy="True"
	copyStuff
	fi
}
main
