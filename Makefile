all: compile

compile:
	Rscript -e 'rmarkdown::render("RJH_Research_2021.Rmd")'
	pdftk RJH_Research_2021.pdf cat 3 output RJH_2021.pdf
	rm -rf RJH_Research_2021.pdf
	rm *.log
	rm titlepage.png

clean:
	rm -rf RobHyndmanCV.pdf
	rm -rf Rpackages.bib
	rm -rf *.rds
	latexmk -c
 
