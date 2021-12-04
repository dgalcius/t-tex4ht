
include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
	htlatex $*
	mv $@ temp.html
	pandoc --quiet --standalone --self-contained --css=$f.css -o $@ temp.html

#-2- make check
%.diff: $f.html $f.ss.html
	diff $^ > $@ || true
	@du $@

# -3- make save
%.ss:
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
