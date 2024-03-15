all: ResumeLucasBracher_en-US.pdf ResumeLucasBracher_pt-BR.pdf

ResumeLucasBracher_en-US.pdf: ResumeLucasBracher_en-US.tex
	xelatex ResumeLucasBracher_en-US.tex

ResumeLucasBracher_pt-BR.pdf: ResumeLucasBracher_pt-BR.tex
	xelatex ResumeLucasBracher_pt-BR.tex

clean:
	rm -f *.aux *.log *.out

pdfclean:
	rm -f *.pdf
