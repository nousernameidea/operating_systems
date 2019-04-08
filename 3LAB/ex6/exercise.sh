#!/bin/bash
if [ -d $1 ] && [ $# -eq 1 ]; then
	ps -elF | grep $(whoami)
else
	echo Niepoprawne argumenty!
fi
