
include ../global.Makefile

%.html: %.tex .FORCE
	htlatex1.sh $* "test,html4,css-in"

%.diff: $f.html $f.ss.html
	diff $^ >$@ || true
	@du $@

%.ss:
	cp $f.html $f.ss.html

