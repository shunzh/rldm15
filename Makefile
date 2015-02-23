all:
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

diff:
	latexdiff old/paper.tex paper.tex > diff.tex
	pdflatex diff.tex
	bibtex diff
	pdflatex diff.tex
	pdflatex diff.tex

clear:
	rm *.blg *.log *.pdf *.bbl *.aux

distribute:
	scp paper.pdf menie482@zarroli.cs.utexas.edu:~/public_html/papers/rldm15.pdf
