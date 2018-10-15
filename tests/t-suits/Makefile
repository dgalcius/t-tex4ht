
file=t-suits

include ../global.Makefile

#-1- produce html+png
%.html: %.tex .FORCE
	htlatex $*

##-2- produce standalone html file
output.html: t-suits.html .FORCE
	pandoc -s --self-contained -o $@ $<

#-3- compare result with pre-saved version. Diff file should be empty
%.diff: output.html .FORCE
	diff output.html $(file).ss > $@ || true
	@du $@

%.ss: .FORCE
	cp output.html $@



