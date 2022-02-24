PREFIX = /usr

SHELL := /bin/bash

all:
	source commit-head.sh
	@echo To install Akebi on your system, type \'make install\'.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/lib/akebi
	@cp -p commit-head $(DESTDIR)$(PREFIX)/lib/akebi/commit-head
	@rm commit-head
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p akebi $(DESTDIR)$(PREFIX)/bin/akebi
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/akebi

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/akebi
	@rm -rf $(DESTDIR)$(PREFIX)/lib/akebi
