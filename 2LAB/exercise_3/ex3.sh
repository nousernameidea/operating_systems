#! /bin/bash

if [[ $# -eq 2 ]] && [[ -d $1 ]] && [[ -d $2 ]]; then
	for i in ${1}/*; do
		if [[ ! -d $i ]] && [[ ! -L $i ]]; then
			ln ${1}/$i ${2}/link$i
		fi
	done
fi

