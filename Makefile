
LATEX=./latexw
BIBTEX=./bibtexw
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
