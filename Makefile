main:
	emacs -Q --batch -l config.el slides.org -f org-beamer-export-to-pdf
clean:
	rm slides.tex slides.pdf slides.tex~
