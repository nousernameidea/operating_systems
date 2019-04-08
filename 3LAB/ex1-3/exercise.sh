#! /bin/bash

if [ -d $1 ] && [ $# -eq 1 ]; then

	echo Liczba wszystkich katalogów:
	find $1 -type "d" | wc -l

	echo Liczba wszystkich plików o rozszerzeniach .sh oraz .pl:
	find $1 -name "*.sh" -or -name "*.pl" | wc -l

	echo Liczba wszystkich plików których nazwa nie zaczyna się na literę b:
	find $1 ! -name "b*" | wc -l

	echo Liczba wszystkich plików które mają w ścieżce katalog src:
	find $1 -name "*src*" | wc -l

	echo Liczba wszystkich plików .c większych niż 100KB:
	find $1 -name "*.c" -size +100k | wc -l

else
	echo Niepoprawne argumenty!
fi	
