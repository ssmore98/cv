BRANCH=`git rev-parse --abbrev-ref HEAD`
default: software.pdf hardware.pdf pandp.pdf
	cp software.pdf "Sachin More (software)".pdf
	cp hardware.pdf "Sachin More (hardware)".pdf
	cp pandp.pdf "Sachin More - Patents and Publications".pdf

%.pdf : %.tex publications.bib
		latexmk -pdf $<

clean:
	latexmk -C software
	latexmk -C hardware
	latexmk -C pandp
