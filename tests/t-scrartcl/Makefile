SHELL=/bin/bash

color-red=tput setaf 1; tput bold;
color-green=tput setaf 2; tput bold;
color-pop=tput sgr0 #

FAILURE=$(color-red)   printf "FAILURE " ; $(color-pop);
SUCCESS=$(color-green) printf "SUCCESS " ; $(color-pop);

file=t-scrartcl

include ../common.Makefile

default: t-scrartcl.diff

#-1- produce html (xml, png or whatever)
%.html: %.tex 
	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.s
	diff $^ > $@ || true
	@du t-scrartcl.diff

# save version with -- make -f <test>.save
%.s: %.html .FORCE
	cp $< $@



.PRECIOUS: %.html
.PHONY: %.s
.FORCE:
