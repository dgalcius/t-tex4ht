# no colors if SHELL is unset
SHELL=/bin/bash

color-red=tput setaf 1; tput bold;
color-green=tput setaf 2; tput bold;
color-pop=tput sgr0 #

FAILURE=$(color-red) echo -n "FAILURE " ; $(color-pop);
SUCCESS=$(color-green) echo "SUCCESS " ; $(color-pop);

default: FILE.diff

#-1- produce html (xml, png or whatever)
%.html: %.tex
	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.s
	diff $^ > $@

%.check: %.diff
	@if [ -s $< ] ; then  $(FAILURE) echo See $< ; else $(SUCCESS) echo \($*\) ; fi

# save version with -- make -f <test>.save
%.s: ./build/%.html .FORCE
	cp $< $@

.PRECIOUS: %.html
.PHONY: %.s
.FORCE:
