tidy:
	tidy -i index.html > index.html.tidy
	mv index.html.tidy index.html

.PHONY: tidy
