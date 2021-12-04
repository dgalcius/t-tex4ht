
include ../global.Makefile

# -1- make test.html
%.html: %.tex .FORCE
	htlatex $*

# -2- make check
%.diff: %.html %.ss.html
	diff $^ >$@ || true
	@du $@

# -3- make save
%.ss:
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
