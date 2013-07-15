cv
==

My curriculum vitae in LaTeX. See `cv.tex`.

For PDF, see http://up.stevetjoa.com/cv.pdf. This PDF may not necessarily be up to date with `cv.tex`.

CV header: 

![CV header](http://up.stevetjoa.com/cv_header.png)

Page footer: 

![page footer](http://up.stevetjoa.com/cv_footer.png)

Multiple bibliographies: 

![multiple bibliographies](http://up.stevetjoa.com/cv_multibib.png)

To build the PDF and bibliographies from scratch, simply type `make` which executes the following commands:

	xelatex cv.tex
	bibtex c.aux
	bibtex j.aux
	xelatex cv.tex
	xelatex cv.tex

LaTeX dependencies:

*   `multibib` for multiple bibliographies
