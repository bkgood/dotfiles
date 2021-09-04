DESTDIR ?= ~

link := ln --force --relative --no-target-directory --symbolic

files := vimrc gitconfig

$(files):
	$(link) $@ $(DESTDIR)/.$@

install: $(files)

.DEFAULT_GOAL := install

.PHONY: install $(files)

