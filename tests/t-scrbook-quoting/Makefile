
include ../global.Makefile

# -1- produce html+png
%.html: %.tex .FORCE
	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty
%.diff: $f.html $f.ss.html
	diff $^ > $@ || true
	@du $@

%.ss:
	cp $f.html $f.ss.html

