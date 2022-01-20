all : clean master

master : master.Rmd
	Rscript -e "library(rmarkdown); render('master.Rmd', 'xaringan::moon_reader')"

clean :
	rm Lesson*html; rm -r *_cache
