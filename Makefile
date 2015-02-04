all:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

diff:
	pdflatex diff.tex
	bibtex diff
	pdflatex diff.tex
	pdflatex diff.tex

clear:
	rm *.blg *.log *.pdf *.bbl *.aux
