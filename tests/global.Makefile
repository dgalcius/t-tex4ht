###SHELL=/bin/bash

f=$(file)

color-red=tput setaf 1; tput bold;
color-green=tput setaf 2; tput bold;
color-pop=tput sgr0 #

FAILURE=$(color-red)   printf "FAILURE " ; $(color-pop);
SUCCESS=$(color-green) printf "SUCCESS " ; $(color-pop);

default:
	@printf "$$ make check       *make FILE.diff, check if size==0.*\n"
	@printf "$$ make save        *pre-save result as FILE.ss*\n"
	@printf "$$ make clean       *clean it up - delete auxiliary files*\n"

check: $f.diff
	@if [ -s $< ] ; then  $(FAILURE) echo See $< ; else $(SUCCESS) echo \($f\) ; fi

save: $f.ss

new:
	m4 -DFILE=$f ../../t.Makefile >Makefile
	touch $f.ss

clean:
	rm -f *.4* *.aux *.dvi *.idv *.log *.tmp *.xref
	rm -f *.css *.html *.lg
	rm -rf *.bbl *.blg *.odt
	rm -f *.png *.pdf
	rm -f *.diff

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:

