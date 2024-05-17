MD_DIR=src
HTML_OUT_DIR=public_html
MD_SOURCES:= $(shell find $(MD_DIR) -name '*.md' | sed 's/src//') 

BASE_URL?=$(PWD)/public_html

HTML_FILES:= $(addprefix $(HTML_OUT_DIR), $(MD_SOURCES:%.md=%.html))
HTML_TEMPLATE=template.html
PANDOCFLAGS=--from markdown --to html5 --standalone \
 	--no-highlight \
	--metadata=title:"Nathan Lapp" \
	--include-before-body=auxiliary/navbar.html \
	--include-after-body=auxiliary/footer.html \
	--variable=base_url:$(BASE_URL)/ \
	--template auxiliary/template.html

RELEASE_ARCHIVE= release.tar.gz
ARCHIVE=tar
ARHCIVEFLAGS=-czvf
MAKE=make

build: auxiliary_files $(HTML_FILES)

$(HTML_OUT_DIR)/%.html: $(MD_DIR)/%.md 
	@mkdir -p ${dir $@}
	@echo $@
	pandoc $(PANDOCFLAGS) -o $@ $<

$(RELEASE_ARCHIVE): build
	$(ARCHIVE) $(ARHCIVEFLAGS) $@ $(HTML_OUT_DIR)

release: $(RELEASE_ARCHIVE)

auxiliary_files:
	$(MAKE) -C auxiliary

clean:
	$(MAKE) -C auxiliary clean
	rm -rf $(HTML_OUT_DIR)
	rm -f $(RELEASE_ARCHIVE)

open: build
	xdg-open $(BASE_URL)/index.html

