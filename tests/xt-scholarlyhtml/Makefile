
file=t-scholarlyhtml

include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex  elementstruct.sty config.cfg .FORCE
	make4ht -um draft -c config.cfg $< "html5"

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.ss
	diff $^ > $@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss: %.html .FORCE
	cp $< $@

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
