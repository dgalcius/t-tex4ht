
include ../global.Makefile

%.html: %.tex .FORCE
	htlatex $*

%.diff: %.html %.ss.html
	diff $^ > $@ || true
	@du $@

%.ss: .FORCE
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
