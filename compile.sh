#!/bin/bash
VAR=main
rm -f $VAR.out $VAR.log $VAR.blg $VAR.bbl # Or however many of these you want
pdflatex -shell-escape $VAR.tex
bibtex $VAR
pdflatex -shell-escape $VAR.tex
pdflatex -shell-escape $VAR.tex
