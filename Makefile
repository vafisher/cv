all: resume

cv:
	xelatex cv.tex
	bibtex c.aux
	bibtex j.aux
	xelatex cv.tex
	xelatex cv.tex

resume:
	xelatex resume.tex
	bibtex c.aux
	bibtex j.aux
	xelatex resume.tex
	xelatex resume.tex

upload:
	aws s3 cp resume.pdf s3://up.stevetjoa.com/ --profile personal
