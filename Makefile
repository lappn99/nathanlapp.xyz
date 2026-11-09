include ./config.mk

build: auxiliary_files $(HTML_FILES) media

# Pages also depend on the shared template/header/footer/config, so changing those rebuilds every page
$(HTML_OUT_DIR)/%.html: $(MD_DIR)/%.md auxiliary/template.html auxiliary/navbar.md auxiliary/footer.md config.mk
	@mkdir -p ${dir $@}
	@echo $@
	pandoc $(PANDOCFLAGS) -o $@ $<

$(RELEASE_ARCHIVE): build
	$(ARCHIVE) $(ARHCIVEFLAGS) $@ $(HTML_OUT_DIR)

release: $(RELEASE_ARCHIVE)

media:
	cp -r $(MEDIA_DIR) $(HTML_OUT_DIR)

auxiliary_files:
	$(MAKE) -C auxiliary

clean:
	$(MAKE) -C auxiliary clean
	rm -rf $(HTML_OUT_DIR)
	rm -f $(RELEASE_ARCHIVE)
	rm -f readbean.com


run: build
	xdg-open "public_html/index.html"
