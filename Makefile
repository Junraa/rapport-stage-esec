SRC=main.tex presentation-entreprise.tex conclusion.tex travaux.tex introduction.tex

all: rapport.pdf

rapport.pdf: $(SRC)
	pdflatex -synctex=1 -halt-on-error -interaction=nonstopmode $(SRC)
	mv main.pdf rapport.pdf

%.tex:
	pdflatex -synctex=1 -halt-on-error -interaction=nonstopmode $<

clean:
	${RM} *.aux *.pdf *.log *.dvi
