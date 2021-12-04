include ../global.Makefile

# -1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
	make4ht $* "html5,mathml,fn-in"
#	htlatex $* "html,html5,mathml"

# -2- make check
%.diff: $f.html $f.ss.html
	diff $^ > $@ || true
	@du $@

# -3- make save
%.ss:
	cp $f.html  $f.ss.html

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
