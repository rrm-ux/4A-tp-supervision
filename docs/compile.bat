
@echo off
echo Compilation du rapport...
del *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.bcf *maf *mtc0 *mtc *xml *pdf *xdv
xelatex -no-pdf rapport.tex
xelatex -no-pdf rapport.tex
xelatex -no-pdf rapport.tex
biber rapport
xelatex rapport.tex
del *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.bcf *maf *mtc0 *mtc *xml *xdv
echo Compilation terminee !
pause