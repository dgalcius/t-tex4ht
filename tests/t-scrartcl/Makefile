
file=t-scrartcl

include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.html: %.tex 
	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.s
	diff $^ > $@ || true
	@du $@

# save version with -- make -f <test>.save
%.s: %.html .FORCE
	cp $< $@

.PRECIOUS: %.html
.PHONY: %.s
.FORCE:
