
file=t-suits

include ../global.Makefile


%.html: %.tex .FORCE
	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.s
	diff $^ > $@ || true
	@du $@

# presaved consist of two part:
# -1- png file which is converted with 'od'
# and -2- html file
%.s: %.html .FORCE
	od $*0x.png > $@
	cat $< >>$@

.PRECIOUS: %.html
.PHONY: %.s
.FORCE:
