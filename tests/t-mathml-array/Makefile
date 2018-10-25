
file=t-mathml-array

include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
#	make4ht $* "html5,mathml"
	htlatex $* "html,html5,mathml"

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html
	diff $< $f.ss > $@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss: .FORCE
	cp $f.html $@

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
