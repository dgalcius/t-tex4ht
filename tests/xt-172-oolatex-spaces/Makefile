
#oodiff=../../bin/oodiff

include ../global.Makefile

# -1- produce html (xml, png or whatever)
%.odt: %.tex .FORCE
#	mk4ht oolatex $< "xhtml,ooffice,bib-,hidden-ref"
	make4ht -m draft -a debug -f odt $<
	bibtex $*
	make4ht -m draft -a debug -f odt $<
#	mk4ht oolatex $< "xhtml,ooffice,bib-,hidden-ref"

#-2- compare result with pre-saved version. Diff file should be empty
%.diff: %.odt %.ss.odt
	$(oodiff)  $^ >$@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss:
	cp $f.odt $f.ss.odt

.PRECIOUS: %.odt
.PHONY: %.ss
.FORCE:
