all : clean html pdf

html : master.Rmd
	Rscript -e "library(rmarkdown); render('master.Rmd', 'xaringan::moon_reader')"

pdf : master.Rmd
	Rscript -e "xaringan::decktape('master.html', 'master.pdf')"

clean :
	rm master.html master.pdf; rm -r *_cache
