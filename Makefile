default: software.pdf hardware.pdf pandp.pdf python.pdf raytheon.pdf cover-letter.pdf
	cp software.pdf "Sachin More".pdf
	cp software.pdf "Sachin More (software)".pdf
	cp hardware.pdf "Sachin More (hardware)".pdf
	cp pandp.pdf "Sachin More - Patents and Publications".pdf

%.pdf : %.tex contact.tex eande.tex
		latexmk -pdf $<

clean:
	latexmk -C software
	latexmk -C hardware
	latexmk -C pandp
	latexmk -C python
	latexmk -C raytheon
	latexmk -C cover-letter
