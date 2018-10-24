source = testelements
texfile = ${source}.tex
htmlfile = ${source}.html
pdffile = ${source}.pdf

all: ${pdffile} ${htmlfile}

${pdffile}: ${texfile}
	lualatex $<

${htmlfile}: ${texfile} elementstruct.sty config.cfg
	make4ht -um draft -c config.cfg $< "html5"
