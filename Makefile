# Makefile for MetacognitiveArchitecture paper

MAIN = main

all: pdf

pdf:
	latexmk -pdf $(MAIN).tex

view: pdf
	latexmk -pdf -pvc $(MAIN).tex

clean:
	latexmk -c $(MAIN).tex

veryclean:
	latexmk -C $(MAIN).tex
	rm -f $(MAIN).bbl $(MAIN).blg

.PHONY: all pdf view clean veryclean

