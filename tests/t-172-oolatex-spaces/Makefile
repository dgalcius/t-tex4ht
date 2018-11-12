oodiff=../../bin/oodiff

file=t-172-oolatex-spaces

include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.odt: %.tex .FORCE
	mk4ht oolatex $< "xhtml,ooffice,bib-,hidden-ref"
	bibtex $*
	mk4ht oolatex $< "xhtml,ooffice,bib-,hidden-ref"

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.odt
	$(oodiff)  $< $f.ss >$@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss: .FORCE
	cp $f.odt $@

.PRECIOUS: %.odt
.PHONY: %.ss
.FORCE:
