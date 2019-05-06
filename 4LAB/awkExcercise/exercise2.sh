#!/bin/bash

if [ $# -eq 1 ]; then

	destination=$1
	awk '{print NR " " $0}' $destination

else
	echo 'Niepoprawne argumenty!'
fi
