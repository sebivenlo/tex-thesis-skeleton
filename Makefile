
LATEX=pdflatex
BIBTEX=bibtex
all: main.pdf


main.pdf: main.tex partials/*.tex configuration/*.tex chapters/*.tex \
	 *.png
	mkdir -p out/partials out/configuration out/chapters
	$(LATEX) -recorder -output-directory=out main.tex
	$(LATEX) -recorder -output-directory=out main.tex
	$(BIBTEX) out/main
	$(LATEX) -recorder -output-directory=out main.tex
	$(LATEX) -recorder -output-directory=out main.tex
	ln -sf out/main.pdf .

mkdirs:
	mkdir -p out/partials out/configuration out/chapters

clean:
	rm -fr out
	rm -f main.pdf
