MD_DIR=src
HTML_OUT_DIR?=public_html
MD_SOURCES:= $(shell find $(MD_DIR) -name '*.md' | sed 's/src//')

# Pages that exist in src/ but shouldn't be published yet (templates, stubs, old versions)
UNPUBLISHED:= /portfolio/portfolio_template.md \
	/portfolio/index_old.md \
	/portfolio/yucca/index.md \
	/portfolio/fuelpunks/index.md
MD_SOURCES:= $(filter-out $(UNPUBLISHED),$(MD_SOURCES))

# BASE_URL is the <base href> every relative link resolves against. "/" works for the
# custom domain (https://nathanlapp.xyz) and for local testing on http://localhost:8080.
BASE_URL?=/
# Absolute site address, used where a full URL is required (link-preview images)
SITE_URL?=https://nathanlapp.xyz

HTML_FILES:= $(addprefix $(HTML_OUT_DIR), $(MD_SOURCES:%.md=%.html))
HTML_TEMPLATE=template.html
PANDOCFLAGS=--from markdown --to html5 --standalone \
 	--no-highlight \
	--wrap=none \
	--metadata=pagetitle:"Nathan Lapp" \
	--metadata=lang:en \
	--include-before-body=auxiliary/navbar.html \
	--include-after-body=auxiliary/footer.html \
	--template auxiliary/template.html \
	-V base_url:$(BASE_URL) \
	-V site_url:$(SITE_URL)

RELEASE_ARCHIVE=nathanlapp.xyz.tar.gz
ARCHIVE=tar
ARHCIVEFLAGS=-czvf
MAKE=make
MEDIA_DIR=Media
