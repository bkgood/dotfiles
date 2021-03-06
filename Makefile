DESTDIR ?= ~

link := ln --force --relative --no-target-directory --symbolic

files := vim gitconfig

dirs :=

$(dirs):
	mkdir --parents $(DESTDIR)/$@

$(files):
	$(link) $@ $(DESTDIR)/.$@

install: $(files) $(dirs)

.DEFAULT_GOAL := install

.PHONY: install $(files) $(dirs)

