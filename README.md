cv
==

My curriculum vitae in LaTeX. See `cv.tex`.

For PDF, see http://up.stevetjoa.com/cv.pdf. This PDF may not necessarily be up to date with `cv.tex`.

To build the PDF and bibliographies from scratch, simply type `make` which executes the following commands:

	xelatex cv.tex
	bibtex c.aux
	bibtex j.aux
	xelatex cv.tex
	xelatex cv.tex

LaTeX dependencies:

*   `multibib` for multiple bibliographies
