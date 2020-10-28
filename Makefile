default: software.pdf hardware.pdf pandp.pdf python.pdf cover-letter.pdf
	cp hardware.pdf "Sachin More (h)".pdf
	cp software.pdf "Sachin More (s)".pdf
	cp pandp.pdf "Sachin More - Patents and Publications".pdf

%.pdf : %.tex contact.tex eande.tex
		latexmk -pdf $<

clean:
	latexmk -C software
	latexmk -C hardware
	latexmk -C pandp
	latexmk -C python
	latexmk -C cover-letter
