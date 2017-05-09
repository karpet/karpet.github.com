tidy:
	tidy -i index.html > index.html.tidy
	mv index.html.tidy index.html

slides:
	cd slides && git checkout master && git pull

.PHONY: tidy slides
