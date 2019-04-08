#!/bin/bash

if [ -d $1 ] && [ $# -eq 1 ]; then
	cat $1 | sort -n
else
	echo Niepoprawne argumenty!
fi
