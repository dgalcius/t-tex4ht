include ../global.Makefile

# -1- produce html (xml, png or whatever)
# make html
%.odt: %.tex .FORCE
	make4ht -f odt $f
	biber $f
	make4ht -f odt $f

# -2- compare result with pre-saved version. Diff file should be empty
# make check
%.diff: $f.odt $f.ss.odt
	$(oodiff) $^ >$@ || true
	@du $@

# -3- make save
%.ss:
	cp $f.odt $f.ss.odt

.PRECIOUS: %.html
.PHONY: %.ss
.FORCE:
