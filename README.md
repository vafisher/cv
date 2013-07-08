cv
==

My curriculum vitae in LaTeX.

For PDF, see http://up.stevetjoa.com/cv.pdf. This PDF may not necessarily be up to date with `cv.tex`.

To build:

	xelatex cv.tex
	bibtex c.aux
	bibtex j.aux
	xelatex cv.tex
	xelatex cv.tex

LaTeX dependencies:

*   `multibib` for multiple bibliographies
