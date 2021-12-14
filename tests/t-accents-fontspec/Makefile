
include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
#	htlatex $*
	make4ht --lua $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.ss.html
	diff $^ > $@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss:
	cp $f.html $f.ss.html

