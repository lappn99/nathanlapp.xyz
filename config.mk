MD_DIR=src
HTML_OUT_DIR?=www
MD_SOURCES:= $(shell find $(MD_DIR) -name '*.md' | sed 's/src//') 
BASE_URL?=$(PWD)/public_html

HTML_FILES:= $(addprefix $(HTML_OUT_DIR), $(MD_SOURCES:%.md=%.html))
HTML_TEMPLATE=template.html
PANDOCFLAGS=--from markdown --to html5 --standalone \
 	--no-highlight \
	--metadata=title:"Nathan Lapp" \
	--include-before-body=auxiliary/navbar.html \
	--include-after-body=auxiliary/footer.html \
	--template auxiliary/template.html

RELEASE_ARCHIVE=nathanlapp.xyz.tar.gz
ARCHIVE=tar
ARHCIVEFLAGS=-czvf
MAKE=make