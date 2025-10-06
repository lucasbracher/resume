all: pdfclean ResumeLucasBracher_en-US.pdf ResumeLucasBracher_pt-BR.pdf

ResumeLucasBracher_en-US.pdf: ResumeLucasBracher_en-US.tex
	make clean
	xelatex ResumeLucasBracher_en-US.tex
	xelatex ResumeLucasBracher_en-US.tex
	make clean

ResumeLucasBracher_pt-BR.pdf: ResumeLucasBracher_pt-BR.tex
	make clean
	xelatex ResumeLucasBracher_pt-BR.tex
	xelatex ResumeLucasBracher_pt-BR.tex
	make clean

clean:
	rm -f *.aux *.log *.out

pdfclean:
	rm -f *.pdf
