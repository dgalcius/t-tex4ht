
include ../global.Makefile

%.html: %.tex .FORCE
	htlatex $*

%.diff: $f.html $f.ss.html
	diff $^ >$@ || true
	@du $@

%.ss:
	cp $f.html $f.ss.html $@

