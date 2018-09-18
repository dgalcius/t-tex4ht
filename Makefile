# make check 
# make test=t-hello check
# make test=t-hello save
SHELL=/bin/bash

# 3 files are needed for a test unit:
# (1) *.tex    - input file
# (2) *.s      - presaved output file. Most like it will be html/xml, 
#                but can be binary format too, e.g., png.
# (3) *.Makefile - rules how to produce output format.
#                  At least two targets needed:
#                  One for producing output (compiling)
#                  Another for diffing results.
tasks =

default:
	@echo \* for checking:
	@echo   make file=FOO check
	@echo   make FOO.check
	@echo \* for saving:
	@echo   make file=FOO save
	@echo   make FOO.save

checkall: $(tasks)
	echo $<


check: $(file).check
new: $(file).new

.ONESHELL:
%.check: 
	mkdir -p build;
	cp $*.tex $*.s $*.Makefile build/
	cd build; make -f $*.Makefile  default

clean:
	rm -rf build

%.save: 
	make -f *.Makefile $*.s

%.new: t.Makefile
	m4 -DFILE=$* $< >$*.Makefile  
	touch $*.s


