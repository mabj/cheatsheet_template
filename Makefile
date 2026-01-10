all: clean
	pdflatex main.tex
	pdflatex main.tex

clean:
	rm -rf *.aux *.log *.out main.pdf