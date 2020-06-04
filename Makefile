default: cv.pdf

software:
	git checkout software
	make cv.pdf
	mv cv.pdf "Sachin More (software)".pdf

hardware:
	git checkout hardware
	make cv.pdf
	mv cv.pdf "Sachin More (hardware)".pdf

cv.pdf:
	latexmk -pdf cv
	latexmk -pdf pandp
