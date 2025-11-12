.PHONY: all clean pdfclean

all: pdfclean ResumeLucasBracher_en-US.pdf ResumeLucasBracher_pt-BR.pdf

ResumeLucasBracher_en-US.pdf: source/ResumeLucasBracher_en-US.tex
	@cd source && \
	xelatex ResumeLucasBracher_en-US.tex && \
	xelatex ResumeLucasBracher_en-US.tex && \
	pandoc -s ResumeLucasBracher_en-US.tex -o ../README.md && \
	mv ResumeLucasBracher_en-US.pdf .. && \
	$(MAKE) -C .. clean

ResumeLucasBracher_pt-BR.pdf: source/ResumeLucasBracher_pt-BR.tex
	@cd source && \
	xelatex ResumeLucasBracher_pt-BR.tex && \
	xelatex ResumeLucasBracher_pt-BR.tex && \
	mv ResumeLucasBracher_pt-BR.pdf .. && \
	$(MAKE) -C .. clean

clean:
	@cd source && rm -f *.aux *.log *.out

pdfclean:
	@rm -f *.pdf

