#!/bin/bash

if [ -d $1 ] && [ $# -eq 1 ]; then

	destination=$1

	echo 'Ilość linii zawierających słówko google: '
	grep -r "google" $destination | wc -l

	echo 'Ilość linii zawierających słówko google: '
	grep -r "^$" $destination | wc -l

	echo 'Ilość niepustych linii: '
	grep -rv "^$" $destination | wc -l

	echo 'Ilość linii zakończonych średnikiem: '
	grep -r ";$" $destination | wc -l

	echo 'Ilość linii zakończonych średnikiem: '
	grep -r "^..$" $destination | wc -l

	echo 'Ilość linii nie zawierających cyfr 0-9 oraz podkreślników _: '
	grep -E -rv "([0-9]|_)" $destination | wc -l

	echo 'Ilość linii zawierających dokładnie dwie kropki obok siebie: '
	grep -r "[^\.]\.\.[^\.]" $destination | wc -l

	echo 'Ilość linii zawierających liczby hexadecymalne: '
	grep -r "0x.*" $destination | wc -l

	echo 'Ilość linii zakończonych trójliterowym rozszerzeniem pliku: '
	grep -r "\.\w\w\w$" $destination | wc -l 

	echo 'Ilość klas class: '
	grep -r "class" $destination | wc -l

else
	echo 'Niepoprawne argumenty!'
fi
