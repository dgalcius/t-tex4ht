###SHELL=/bin/bash

color-red=tput setaf 1; tput bold;
color-green=tput setaf 2; tput bold;
color-pop=tput sgr0 #

FAILURE=$(color-red)   printf "FAILURE " ; $(color-pop);
SUCCESS=$(color-green) printf "SUCCESS " ; $(color-pop);

default:
	echo make check - make file.diff, check if size==0.
	echo make save  - save result as file.s
	echo make clean - clean it up

check: $(file).diff
	@if [ -s $< ] ; then  $(FAILURE) echo See $< ; else $(SUCCESS) echo \($(file)\) ; fi

save: $(file).s

clean:
	rm -f *.4* *.aux *.dvi *.idv *.log *.tmp *.xref
	rm -f *.css *.html *.lg
	rm -f *.diff
