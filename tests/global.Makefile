###SHELL=/bin/bash

f = test

oodiff = ../../bin/oodiff

color-red=\e[1;31m
color-green=\e[1;32m
color-pop=\e[0m

FAILURE_=$(color-red)FAILURE$(color-pop)
SUCCESS_=$(color-green)SUCCESS$(color-pop)
FAILURE=printf "$(FAILURE_). See ./test.diff \n"
SUCCESS=printf "$(SUCCESS_)\n"

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
	rm -f $f.bbl $f.blg $f.odt
	rm -f $f.bcf $f.bib $f.out $f.run.xml
	rm -f $f*.png $f.pdf
	rm -f $f.diff
	rm -f temp.*

# shotcuts
pdf: $f.pdf
html: $f.html
odt: $f.odt

%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips -j0 $<

%.dvi: %.tex .FORCE
	latex -recorder $<

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:

