default:
	git checkout master
	git pull
	make cv.pdf
	mv cv.pdf "Sachin More".pdf
	make pandp.pdf
	mv pandp.pdf "Sachin More - Patents and Publications".pdf

software:
	git checkout software
	git pull
	make cv.pdf
	mv cv.pdf "Sachin More (software)".pdf

hardware:
	git checkout hardware
	git pull
	make cv.pdf
	mv cv.pdf "Sachin More (hardware)".pdf

cv.pdf:
	latexmk -pdf cv

pandp.pdf:
	latexmk -pdf pandp
