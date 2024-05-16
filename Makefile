MD_DIR=src
HTML_OUT_DIR=public_html
MD_SOURCES:= $(shell find $(MD_DIR) -name '*.md' | sed 's/src//') 

HTML_FILES:= $(addprefix $(HTML_OUT_DIR), $(MD_SOURCES:%.md=%.html))
HTML_TEMPLATE=template.html
PANDOCFLAGS=--from markdown --to html5 --standalone --no-highlight --metadata=title:"Nathans page" 
RELEASE_ARCHIVE=release.tar.gz
ARCHIVE=tar
ARHCIVEFLAGS=-czvf


build: $(HTML_FILES)

$(HTML_OUT_DIR)/%.html: $(MD_DIR)/%.md 
	@mkdir -p ${dir $@}
	@echo $@
	pandoc $(PANDOCFLAGS) -o $@ $<

$(RELEASE_ARCHIVE): build
	$(ARCHIVE) $(ARHCIVEFLAGS) $@ $(HTML_OUT_DIR)

release: $(RELEASE_ARCHIVE)

clean:
	rm -rf $(HTML_OUT_DIR)
	rm -f $(RELEASE_ARCHIVE)

open: $(HTML_OUT_DIR)/index.html
	xdg-open $^

