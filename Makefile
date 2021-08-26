

MY_FILENAME = main

${MY_FILENAME}.pdf: ${MY_FILENAME}.ctx
	python3 /usr/local/texlive/texmf-local/bin/cwpdf.py -texshop $<



.PHONY: clean

clean:
	rm ${MY_FILENAME}.{pdf,tex,aux,log,xlg,synctex} xcinput.tex
