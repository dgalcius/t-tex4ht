
file=t-mathml-array

include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
	make4ht $< "html,html5,mathml"
#	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html
	diff $< $f.ss > $@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss: %.html .FORCE
	cp $< $@

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
