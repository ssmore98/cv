default: Sachin\ More\ (h).pdf Sachin\ More\ (s).pdf Sachin\ More\ -\ Patents\ and\ Publications.pdf python.pdf # cover-letter.pdf

Sachin\ More\ (h).pdf: hardware.pdf 
	cp $< "$@"
 
Sachin\ More\ (s).pdf: software.pdf 
	cp $< "$@"
 
Sachin\ More\ -\ Patents\ and\ Publications.pdf: pandp.pdf
	cp $< "$@"

%.pdf : %.tex contact.tex eande.tex
	latexmk -pdf $<
 
clean:
	latexmk -C software
	latexmk -C hardware
	latexmk -C pandp
	latexmk -C python
	latexmk -C cover-letter
