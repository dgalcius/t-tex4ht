

file=t-hello

default: t-hello.diff

#-1- produce html (xml, png or whatever)
%.html: %.tex .FORCE
	htlatex $*

#-2- compare result with pre-saved version. Diff file should be empty 
%.diff: %.html %.s
	diff $^ > $@ || true
	@du $@

# save version with -- make -f <test>.save
%.s: ./build/%.html .FORCE
	cp $< $@

check: $(file).diff
	@if [ -s $< ] ; then  $(FAILURE) echo See $< ; else $(SUCCESS) echo \($(file)\) ; fi

save: $(file).s

clean:
	rm -f *.4* *.aux *.dvi *.idv *.log *.tmp *.xref
	rm -f *.css *.html *.lg
	rm -f *.diff


.PRECIOUS: %.html
.PHONY: %.s
.FORCE:
