include ../global.Makefile

# -1- produce html (xml, png or whatever)
# $ make odt
%.odt: %.tex .FORCE
	make4ht -f odt $f
	biber $f
	make4ht -f odt $f

# -2-
# $ make check
%.diff: $f.odt $f.ss.odt
	$(oodiff) $^ >$@ || true
	@du $@

# -3-
# $ make save
%.ss:
	cp $f.odt $f.ss.odt

.PRECIOUS: %.odt
.PHONY: %.ss
.FORCE:
