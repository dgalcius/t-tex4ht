# make check 
# make test=t-hello check
# make test=t-hello save
SHELL=/bin/bash

color-red=tput setaf 1; tput bold;
color-green=tput setaf 2; tput bold;
color-pop=tput sgr0 #

FAILURE_=$(color-red)   printf "FAILURE " >> $(sumlog) ; $(color-pop);
SUCCESS_=$(color-green) printf "SUCCESS " >> $(sumlog) ; $(color-pop);

FAILURE=$(FAILURE_) echo \($$i\). See ./build/$$i/$$i.diff >> $(sumlog)
SUCCESS=$(SUCCESS_)  echo \($$i\). >> $(sumlog)

sumlog=./build/summary.log

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
	@printf "$$ make check             *check all units*\n"
	@printf "$$ make unit=FOO check    *check single unit FOO*\n"
	@printf "$$ make unit=FOO save     *pre-save single unit FOO*\n"
	@printf "$$ make unit=FOO new      *new bare-bone unit-test ./tests/FOO/*\n"



.ONESHELL:
check: check.pre check.units check.post

## prepare build/ folder for tests run
check.pre:
	rm -rf build
	mkdir -p build
	cp -r tests/* build

## run tests
.ONESHELL:
check.units:
	for i in $(unit); do
		echo $$i;
		make -C build/$$i check
	done

## prepare tests summary report
.ONESHELL:
check.post:
	@clear
	@for i in $(unit); do
		@if [[ ! -e ./build/$$i/$$i.diff || -s ./build/$$i/$$i.diff ]] ; then  $(FAILURE) ; else $(SUCCESS) ; fi
	@done
	@printf "*******************\n      Summary\n*******************\n"
	nl -nrz -w3 $(sumlog)

clean:
	rm -rf build


new: $(unit).new

%.new: t.Makefile
	mkdir -p tests/$(unit)
	m4 -DFILE=$* $< >tests/$(unit)/Makefile
	touch tests/$(unit)/$*.ss


