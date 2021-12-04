
include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
	htlatex $*
	mv $@ temp.html
	pandoc --quiet --standalone --self-contained --css test.css -o $@ temp.html

#-2- compare result with pre-saved version. Diff file should be empty
%.diff: %.html %.ss.html
	diff $^ > $@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss: .FORCE
	cp $f.html $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
