# make check
# make test=t-hello check
# make test=t-hello save
SHELL=/bin/bash

color-red=\e[1;31m
color-green=\e[1;32m
color-blue=\e[1;36m
color-pop=\e[0m

FAILURE_=$(color-red)FAILURE$(color-pop)
SUCCESS_=$(color-green)SUCCESS$(color-pop)

FAILURE=printf "$(FAILURE_) (*** $$i ***). See ./build/$$i/test.diff \n">> $(sumlog)
SUCCESS=printf "$(SUCCESS_) (*** $$i ***). \n">> $(sumlog)

sumlog=./build/summary.log
elapsedlog=./build/elapsed.log

# 3 files are needed for a test unit:
# (1) test.tex:     input file
# (2) test.ss.html:  presaved output file. Most like it will be html/xml,
#                    but can be binary format too, e.g., png. odt
# (3) Makefile:      rules how to produce output format.
#                    At least two targets needed:
#                    One for producing output (compiling)
#                    Another for diffing results.
# tasks - subfolders in ./tests that starts with t-*

DATE:=$(shell date +%Y-%m-%d)

test:=$(shell ls -d ./tests/t*/)
test:=$(test:./tests/%/=%)

default:
	@printf "$$ make check             *check all units*\n"
	@printf "$$ make test=FOO check    *check single unit FOO*\n"
	@printf "$$ make test=FOO save     *pre-save single unit FOO*\n"
	@printf "$$ make test=FOO new      *new bare-bone unit-test ./tests/FOO/*\n"

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
	START=$$(date +%s.%N)
	for i in $(test); do
		echo $$i;
		make -C build/$$i check
	done
	END=$$(date +%s.%N)
	DIFF=$$( echo "scale=3; ($${END} - $${START})*1/1" | bc )
	echo "$${DIFF} (sec)" >$(elapsedlog)


## prepare tests summary report
.ONESHELL:
check.post:
	@clear
	@for i in $(test); do
		@if [[ ! -e ./build/$$i/test.diff || -s ./build/$$i/test.diff ]] ; then  $(FAILURE) ; else $(SUCCESS) ; fi
	@done
	@printf "*******************\n      Summary\n*******************\n"
	ELAPSED=$$(cat $(elapsedlog))
	nl -nrz -w3 $(sumlog)
	@printf "\n ** Elapsed: $${ELAPSED} **\n"

clean:
	rm -rf build

new: $(test).new

%.new:
	mkdir -p tests/$(test)
	m4 -DFILE=$* tests/_template.Makefile >tests/$(test)/Makefile
	m4 -DFILE=$* -DTODAY=$(DATE) -DAUTHOR=$(USER) tests/_template.tex >tests/$(test)/test.tex
	touch tests/$(test)/test.ss.html
