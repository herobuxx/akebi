PREFIX = /usr

all:
	@echo To install Akebi on your system, type \'make install\'.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p akebi $(DESTDIR)$(PREFIX)/bin/akebi
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/akebi

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/akebi
