cv
==

*This CV is not maintained. Moving CV to HTML in [stevetjoa.com-views/cv](http://github.com/stevetjoa/stevetjoa.com-views).*

My curriculum vitae in LaTeX. See `cv.tex`.

For PDF, see <http://up.stevetjoa.com/cv.pdf>. This PDF may not necessarily be up to date with `cv.tex`.

CV header: 

![CV header](http://up.stevetjoa.com/cv_header.png)

Page footer: 

![page footer](http://up.stevetjoa.com/cv_footer.png)

Multiple bibliographies: 

![multiple bibliographies](http://up.stevetjoa.com/cv_multibib.png)

To build the PDF and bibliographies from scratch, simply execute the following commands:

	xelatex cv.tex
	bibtex c.aux
	bibtex j.aux
	xelatex cv.tex
	xelatex cv.tex

To upload to Amazon S3 using `awscli`:

    aws s3 cp cv.pdf s3://yourbucketnamehere/

This step requires the environment variables `AWS_ACCESS_KEY` and `AWS_SECRET_KEY`.

LaTeX dependencies:

*   `multibib` for multiple bibliographies

For more about me, please visit <http://stevetjoa.com>.

