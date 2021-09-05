DESTDIR ?= ~

link := ln --force --relative --no-target-directory --symbolic

files := vimrc gitconfig

dirs := .vim/swap .vim/undo

$(dirs):
	mkdir --parents $(DESTDIR)/$@

$(files):
	$(link) $@ $(DESTDIR)/.$@

install: $(files) $(dirs)

.DEFAULT_GOAL := install

.PHONY: install $(files) $(dirs)

