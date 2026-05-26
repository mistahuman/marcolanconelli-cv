NAME = marcolanconelli-cv
LAT  = pdflatex -interaction=nonstopmode
SRC  = src
LIB  = lib
OUT  = out

SRCS = $(wildcard $(SRC)/*.tex) $(wildcard $(SRC)/*.bib) $(wildcard $(SRC)/images/*)

.PHONY: all clean cleanall

all: $(OUT)/$(NAME).pdf

$(OUT)/$(NAME).pdf: $(SRCS)
	mkdir -p $(OUT)
	cd $(SRC) && TEXINPUTS=.:../$(LIB): $(LAT) -output-directory=../$(OUT) $(NAME).tex
	biber $(OUT)/$(NAME)
	cd $(SRC) && TEXINPUTS=.:../$(LIB): $(LAT) -output-directory=../$(OUT) $(NAME).tex
	cd $(SRC) && TEXINPUTS=.:../$(LIB): $(LAT) -output-directory=../$(OUT) $(NAME).tex

clean:
	rm -f $(OUT)/*.aux $(OUT)/*.log $(OUT)/*.bcf $(OUT)/*.blg \
	      $(OUT)/*.fls $(OUT)/*.fdb_latexmk $(OUT)/*.run.xml \
	      $(OUT)/*.synctex.gz $(OUT)/*.toc $(OUT)/*.out

cleanall: clean
	rm -f $(OUT)/$(NAME).pdf
