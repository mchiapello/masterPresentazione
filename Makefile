all : clean html pdf

html : $(file)
	Rscript -e "library(rmarkdown); render('$(file)', 'xaringan::moon_reader')"

pdf : $(file)
	Rscript -e "xaringan::decktape('$(file)', '$(file).pdf')"

clean : 
	rm *.html; rm *.html.pdf; rm -r *_cache docs/*

public: $(file)
	mkdir -p docs
	cp $(file) docs
	cp -r $(basename ${file})_cache docs
