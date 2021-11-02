
include ../global.Makefile

%.html: %.tex .FORCE
	htlatex $f.tex "nma.cfg,charset=utf-8" " -cunihtf -utf8"
	tidy -m -i $@

%.diff: %.html
	diff $< $f.ss.html >$@ || true
	@du $@

# save
%.ss: .FORCE
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss.html
.FORCE:
