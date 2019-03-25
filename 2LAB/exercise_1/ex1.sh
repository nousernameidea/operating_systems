#! /bin/bash

if [[ $# -e 1 ]] && [[ -d $1 ]]; then
	symlinkCounter=0
	existCounter=0

	for i in ${1}/*; do
		if [[ -L $i ]]; then
			symlinkCounter=$((symlinkCounter + 1))
			if [[ -e $(readlink $i) ]]; then
				existCounter=$((existCounter + 1))
			fi
		fi
	done

	echo Znaleziono $symlinkCounter symlink
	echo Znaleziono $existCounter powiazanych istniejacych plikow	
else	
	echo ERROR: Invalid number of arguments
	exit 0
fi		
