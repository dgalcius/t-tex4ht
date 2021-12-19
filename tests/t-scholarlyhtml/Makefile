include ../global.Makefile

%.html: %.tex .FORCE
#	make4ht -um draft -c config.cfg $< "html5"
#	biber $*
#	make4ht -u -c config.cfg $< "html5"
	htlatex1.sh $< "config"
	biber $*
	htlatex $< "config"

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: $f.html $f.ss.html
	diff $^ >$@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%.ss: 
	cp $f.html $f.ss.html

