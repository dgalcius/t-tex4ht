
file=t-scrbook-quoting

include ../global.Makefile

#-1- produce html+png
%.html: %.tex .FORCE
	htlatex $*

#-3- compare result with pre-saved version. Diff file should be empty
%.diff: $f.html .FORCE
	diff $f.html $f.ss > $@ || true
	@du $@

%.ss: .FORCE
	cp $f.html $@



