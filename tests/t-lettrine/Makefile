
file=t-lettrine

include ../global.Makefile

html: $f.html

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
	htlatex $*

#-2- produce standalone html file
output.html: $f.html .FORCE
	pandoc --quiet -s --self-contained --css=$f.css -o $@ $<

#-3- compare result with pre-saved version. Diff file should be empty 
%.diff: output.html .FORCE
	diff output.html $f.ss > $@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss: .FORCE
	cp output.html $@

.PRECIOUS: %.html
.PHONY: %.s
.FORCE:
