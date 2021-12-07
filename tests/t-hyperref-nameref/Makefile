include ../global.Makefile

# -1- produce html (xml, png or whatever)
# make html
%.html: %.tex .FORCE
	htlatex $*

# -2- compare result with pre-saved version. Diff file should be empty
# make check
%.diff: $f.html $f.ss.html
	diff $^ >$@ || true
	@du $@

# -3- make save
%.ss:
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
