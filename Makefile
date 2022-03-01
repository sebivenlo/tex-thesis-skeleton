
# for use with xelatexd
LATEX=./latexw
BIBTEX=./bibtexw
## for use with default latex
# LATEX=pdflatex
# BIBTEX=bibtex

## if you use xelatex for better funt and utf-8 handling replace latexw and pdflatex with xelatexw and xelatex
all: main.pdf
fast: fast.pdf

main.pdf: main.tex partials/*.tex configuration/*.tex chapters/*.tex \
	 *.png
	mkdir -p out/partials out/configuration out/chapters
	$(LATEX) main.tex
	$(LATEX) main.tex
	$(BIBTEX) out/main
	$(LATEX) main.tex
	$(LATEX) main.tex
	ln -sf out/*.pdf .

fast.pdf: main.tex partials/*.tex configuration/*.tex chapters/*.tex \
	 *.png
	mkdir -p out/partials out/configuration out/chapters
	$(LATEX) -recorder -output-directory=out main.tex
	ln -sf out/*.pdf .

clean:
	rm -fr out
	rm -f main.pdf
