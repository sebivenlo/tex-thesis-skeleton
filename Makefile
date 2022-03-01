
# for use with xelatexd
LATEX=./latexw
BIBTEX=./bibtexw
## for use with default latex
LATEX=pdflatex -output-directory out -recorder -synctex 15 -interaction=batchmode
BIBTEX=bibtex
# if you want to use xelatexd comment the two lines above this one.

## if you use xelatex for better font and utf-8 handling replace latexw and pdflatex with xelatexw and xelatex.
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
	$(LATEX) main.tex
	ln -sf out/*.pdf .

clean:
	rm -fr out
	rm -f main.pdf
