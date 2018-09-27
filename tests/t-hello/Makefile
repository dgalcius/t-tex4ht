
file=t-hello

include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.s
	diff $^ > $@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.s: %.html .FORCE
	cp $< $@

.PRECIOUS: %.html
.PHONY: %.s
.FORCE:
