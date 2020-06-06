BRANCH=`git rev-parse --abbrev-ref HEAD`
default: software.pdf hardware.pdf pandp.pdf
	cp software.pdf "Sachin More (software)".pdf
	cp hardware.pdf "Sachin More (hardware)".pdf

pandp.pdf:
	latexmk -pdf pandp

%.pdf : %.tex
		latexmk -pdf $<
