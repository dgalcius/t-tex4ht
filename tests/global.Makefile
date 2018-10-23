###SHELL=/bin/bash

f=$(file)

color-red=tput setaf 1; tput bold;
color-green=tput setaf 2; tput bold;
color-pop=tput sgr0 #

FAILURE=$(color-red)   printf "FAILURE " ; $(color-pop);
SUCCESS=$(color-green) printf "SUCCESS " ; $(color-pop);

default:
	@echo make check - make FILE.diff, check if size==0.
	@echo make save - save result as FILE.ss
	@echo make clean - clean it up

check: $f.diff
	@if [ -s $< ] ; then  $(FAILURE) echo See $< ; else $(SUCCESS) echo \($f\) ; fi

save: $f.ss

clean:
	rm -f *.4* *.aux *.dvi *.idv *.log *.tmp *.xref
	rm -f *.css *.html *.lg
	rm -f *.png *.pdf
	rm -f *.diff

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:

