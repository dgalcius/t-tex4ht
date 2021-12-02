
include ../global.Makefile

%.html: %.tex .FORCE
	htlatex $f.tex "nma.cfg,charset=utf-8" " -cunihtf -utf8"
	tidy -modify -indent -quiet $@

%.diff: %.html %.ss.html
	diff $^ >$@ || true
	@du $@

# save
%.ss:
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss.html
.FORCE:
