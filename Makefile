# make check 
# make test=t-hello check
# make test=t-hello save
SHELL=/bin/bash

color-red=tput setaf 1; tput bold;
color-green=tput setaf 2; tput bold;
color-pop=tput sgr0 #

FAILURE=$(color-red)   printf "FAILURE " ; $(color-pop);
SUCCESS=$(color-green) printf "SUCCESS " ; $(color-pop);


# 3 files are needed for a test unit:
# (1) *.tex    - input file
# (2) *.s      - presaved output file. Most like it will be html/xml, 
#                but can be binary format too, e.g., png.
# (3) Makefile - rules how to produce output format.
#                  At least two targets needed:
#                  One for producing output (compiling)
#                  Another for diffing results.
# task - subfolder that starts with t-*



unit:=$(shell ls -d ./tests/t*/)
unit:=$(unit:./tests/%/=%)

default:
	@echo \* check all
	@echo make check
	@echo \* check single unit:
	@echo   make unit=FOO check
	@echo \* for saving:
	@echo   make unit=FOO save
	@echo \* new bare-none unit-test:
	@echo   make unit=FOO new


.ONESHELL:
check: check.pre check.units check.post

## prepare build/ folder for tests run
check.pre:
	mkdir -p build
	cp -r tests/* build
#	cp $*.tex $*.s $*.Makefile build/
#	cd build; make -f $*.Makefile  default

## run tests
.ONESHELL:
check.units:
	for i in $(unit); do
		echo $$i;
		make -C build/$$i check
	done

## prepare tests summary report
check.post:
	clear
	for i in $(unit); do
		@if [ -s .build/$$i/$$i.diff ] ; then  $(FAILURE) echo See .build/$$i/$$i.diff ; else $(SUCCESS) echo \($$i\) ; fi
	done

clean:
	rm -rf build

%.save: 
	make -f *.Makefile $*.s

new: $(file).new
%.new: t.Makefile
	m4 -DFILE=$* $< >$*.Makefile  
	touch $*.s


