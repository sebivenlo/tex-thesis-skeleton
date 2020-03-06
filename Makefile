
LATEX=pdflatex
BIBTEX=bibtex
all: main.pdf


main.pdf: main.tex partials/*.tex configuration/*.tex chapters/*.tex \
	infopage.txt
	mkdir -p out/partials out/configuration out/chapters
	$(LATEX) -recorder -aux-directory=out -output-directory=out main.tex
	$(LATEX) -recorder -aux-directory=out -output-directory=out main.tex
	$(BIBTEX) out/main.aux
	$(LATEX) -recorder -aux-directory=out -output-directory=out main.tex
	$(LATEX) -recorder -aux-directory=out -output-directory=out main.tex
	ln -sf out/main.pdf .

clean:
	rm -fr out
	rm -f main.pdf
