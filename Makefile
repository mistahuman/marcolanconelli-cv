LAT = pdflatex -interaction=nonstopmode

.PHONY: all clean cleanall

all:
	$(LAT) sample.tex
	biber sample
	$(LAT) sample.tex
	$(LAT) sample.tex

clean:
	rm -f *.aux *.log *.synctex.gz *.toc *.out *.bbl *.blg *.fls *.fdb_latexmk *.bcf *.run.xml

cleanall: clean
	rm -f sample.pdf
