###SHELL=/bin/bash

f = test

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
	rm -f $f.4* $f.aux $f.dvi $f.idv $f.log $f.tmp $f.xref $f.fls
	rm -f $f.css $f.html $f.lg
	rm -rf $f.bbl $f.blg $f.odt
	rm -f $f.png $f.pdf
	rm -f $f.diff

# shotcuts
pdf: $f.pdf
html: $f.html

%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips -j0 $<

%.dvi: %.tex .FORCE
	latex -recorder $<

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:

