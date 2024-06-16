JSON_RESUME_THEME ?= jsonresume-theme-relaxed
RESUME = ./node_modules/.bin/resume

##
## # Commands
##---------------------------------------------------------------------------

.PHONY: all html pdf serve

all: html pdf	## Export to HTML and PDF

html:				## Export to HTML
					@$(RESUME) export index.html --theme $(JSON_RESUME_THEME)

pdf:				## Export to PDF
					@$(RESUME) export resume.pdf --theme $(JSON_RESUME_THEME)

serve:				## Serve the resume
					@$(RESUME) serve --dir . --resume resume.json --theme $(JSON_RESUME_THEME)

##
## # Help
##---------------------------------------------------------------------------

.PHONY: help

help:					## Display help
						@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-20s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

.DEFAULT_GOAL := 	help
