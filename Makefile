default: software.pdf hardware.pdf pandp.pdf python.pdf raytheon.pdf cover-letter.pdf
	cp software.pdf "Sachin More".pdf
	cp pandp.pdf "Sachin More - Patents and Publications".pdf

%.pdf : %.tex contact.tex eande.tex
		latexmk -pdf $<

clean:
	latexmk -C software
	latexmk -C pandp
	latexmk -C python
	latexmk -C cover-letter
