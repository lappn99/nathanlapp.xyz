PANDOCFLAGS=--from markdown --to html5

HTML_FILES=navbar.html footer.html

build: $(HTML_FILES)

%.html: %.md 
	@mkdir -p ${dir $@}
	@echo $@
	pandoc $(PANDOCFLAGS) -o $@ $<

clean:
	rm -f $(HTML_FILES)
