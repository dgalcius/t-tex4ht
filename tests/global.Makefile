SHELL=/bin/bash

extra_bin = ../../bin
PATH := $(shell echo $$PATH)
export PATH := $(extra_bin):$(PATH)

source=~/local/gitlab.com/tex4ht-mirror/tex4ht/lit
source_htf=$(source)/tex4ht.dir/texmf/tex4ht/ht-fonts
#
export TEXMFDOTDIR := .//;$(source)
export TEX4HTINPUTS := .//;$(source_htf)/{$$TEX4HTFONTSET}//;

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
	@printf "$$ make check       make test.diff, check if size==0.\n"
	@printf "$$ make save        pre-save result as test.ss.html\n"
	@printf "$$ make clean       clean it up - delete auxiliary files\n"
	@printf "*--*\n"
	@printf "$$ make pdf         * produce test.pdf\n"
	@printf "                   * dvips workflow: tex->dvi->ps->pdf\n"
	@printf "$$ make html        * produce test.html.\n"
	@printf "                   * Assuming '%%.html' is defined\n"
	@printf "$$ make odt         * produce test.odt.\n"
	@printf "                   * Assuming '%%.odt' is defined\n"



check: $f.diff
	@if [ -s $< ] ; then  $(FAILURE) echo See $< ; else $(SUCCESS) echo \($f\) ; fi

save: $f.ss

new:
	m4 -DFILE=$f ../../t.Makefile >Makefile
	touch $f.ss

clean:
	rm -f $f.4* $f.aux $f.dvi $f.idv $f.log $f.tmp $f.xref $f.fls $f.toc
	rm -f $f.css $f.html $f.lg
	rm -f $f.bbl $f.brf $f.blg $f.odt
	rm -f $f.bcf $f.bib $f.out $f.run.xml
	rm -f $f*.png $f.pdf
	rm -f $f.diff
	rm -f temp.*

# shortcuts
pdf:  $f.pdf
html: $f.html
odt:  $f.odt

%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips -j1 $<

%.dvi: %.tex .FORCE
	latex -recorder $<

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:

