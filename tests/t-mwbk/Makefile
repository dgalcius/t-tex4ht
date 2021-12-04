include ../global.Makefile

# -1- produce html+png
# make html
%.html: %.tex .FORCE
	htlatex $*

# -2- make check
%.diff: $f.html $f.ss.html
	diff $^ > $@ || true
	@du $@

# -3- make save
%.ss:
	cp $f.html $f.ss.html

