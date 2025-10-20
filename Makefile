all: pdfclean ResumeLucasBracher_en-US.pdf ResumeLucasBracher_pt-BR.pdf

ResumeLucasBracher_en-US.pdf:
	make clean; cd source; \
	xelatex ResumeLucasBracher_en-US.tex; \
	xelatex ResumeLucasBracher_en-US.tex; \
	pandoc -s ResumeLucasBracher_en-US.tex -o ../README.md
	mv *.pdf ..; \
	cd ..; \
	make clean

ResumeLucasBracher_pt-BR.pdf:
	make clean; cd source; \
	xelatex ResumeLucasBracher_pt-BR.tex; \
	xelatex ResumeLucasBracher_pt-BR.tex;\
	mv *.pdf ..; \
	cd ..; \
	make clean

clean:
	cd source; \
	rm -f *.aux *.log *.out; \ 
	cd ..

pdfclean:
	rm -f *.pdf
