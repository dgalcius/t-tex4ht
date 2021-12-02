#export TEXINPUTS := ./;../../pro//;../../extra//;../../upgrade//;
#export TEXINPUTS := ~/local/gitlab.com/tex4ht-mirror/tex4ht/lit;
#
## ./tex4ht.dir/texmf/tex4ht/ht-fonts/
#
## % search formats, you'll want to add their variables here as well.
## T4HTINPUTS   = $TEXMFDOTDIR;$TEXMF/tex4ht//
##
## %% t4ht utility, sharing files with TeX4ht
## TEX4HTFONTSET=alias,iso8859,unicode
## TEX4HTINPUTS = $TEXMFDOTDIR;$TEXMF/tex4ht/base//;$TEXMF/tex4ht/ht-fonts/{$TEX4HTFONTSET}//

## Valid with tl2019
## Invalid with tl2021
## in tl2021 tried: make4ht -f odt -a debug test

oodiff=../../bin/oodiff

include ../global.Makefile

#-1- produce html (xml, png or whatever)
%.odt: %.tex .FORCE
	mk4ht oolatex $< "xhtml,ooffice,bib-,hidden-ref"
	bibtex $*
	mk4ht oolatex $< "xhtml,ooffice,bib-,hidden-ref"

#-2- compare result with pre-saved version. Diff file should be empty
%.diff: %.odt %.ss.odt
	$(oodiff)  $^ >$@ || true
	@du $@

# -3- save version with -- make -f <test>.save
%ss:
	cp $f.odt $f.ss.odt

.PRECIOUS: %.odt
.PHONY: %.ss
.FORCE:
