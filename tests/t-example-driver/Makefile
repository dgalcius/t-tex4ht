
file=t-example-driver

include ../global.Makefile

%.html: %.tex .FORCE
	htlatex $*

##-1.X- produce standalone html file
## output.html: $f.html .FORCE
##	pandoc --quiet -s --self-contained -o $@ $<
##

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html
	diff $< $f.ss >$@ || true
	@du $@

##-2.X- compare result with pre-saved version. Diff file should be empty
##%.diff: output.html .FORCE
##	diff output.html $f.ss > $@ || true
##	@du $@


# -3- save version with -- make -f <test>.save
%.ss: .FORCE
	cp $f.html $@

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
