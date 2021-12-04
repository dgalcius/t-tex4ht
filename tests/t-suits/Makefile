include ../global.Makefile

# -1- produce html+png
# make html
%.html: %.tex .FORCE
	htlatex $*
	mv $@ temp.html
	pandoc --quiet --standalone --self-contained -o $@ temp.html

# -2- compare result with pre-saved version. Diff file should be empty
%.diff: $f.html $f.ss.html
	diff $^ > $@ || true
	@du $@

%.ss:
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
