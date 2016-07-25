SRC=main.tex presentation-entreprise.tex conclusion.tex travaux.tex introduction.tex orga.tex resume.tex
SRC_ANNEXES=main-annexes.tex annexes-resultats.tex annexes-materiel.tex annexes-entreprise.tex
SRC_ABSTRACT=abstract.tex

all: rapport.pdf annexes.pdf abstract.pdf

rapport.pdf: $(SRC)
	pdflatex -synctex=1 -halt-on-error -interaction=nonstopmode $(SRC)
	mv main.pdf rapport.pdf

annexes.pdf: $(SRC_ANNEXES)
	pdflatex -synctex=1 -halt-on-error -interaction=nonstopmode $(SRC_ANNEXES)
	mv main-annexes.pdf annexes.pdf

abstract.pdf: $(SRC_ABSTRACT)
	pdflatex -synctex=1 -halt-on-error -interaction=nonstopmode $(SRC_ABSTRACT)

%.tex:
	pdflatex -synctex=1 -halt-on-error -interaction=nonstopmode $<

clean:
	${RM} *.aux *.pdf *.log *.dvi *.lof *.lot
