help: ## Print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-24s\033[0m %s\n", $$1, $$2}'

tidy: ## Tidy up the resume
	tidy -i index.html > index.html.tidy
	mv index.html.tidy index.html

slides: ## Update the slides
	cd slides && git checkout master && git pull

setup: ## Prep new local repo
	git submodule init
	git submodule update

.PHONY: tidy slides
