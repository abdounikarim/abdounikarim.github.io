##
## # Export
##---------------------------------------------------------------------------

.PHONY: html pdf

html:				## Export to HTML
					./node_modules/.bin/resumed --theme jsonresume-theme-kendall-markdown --output index.html

pdf:				## Export to PDF
					./node_modules/.bin/html-export-pdf-cli ./index.html -o resume.pdf

##
## # Help
##---------------------------------------------------------------------------

.PHONY: help

help:					## Display help
						@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-20s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

.DEFAULT_GOAL := 	help
