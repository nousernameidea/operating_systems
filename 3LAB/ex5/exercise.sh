#!/bin/bash
if [ -d $1 ] && [ $# -eq 1 ]; then
	cat $1 | nl | head +19 | tail -31
else
	echo Niepoprawne argumenty!
fi
