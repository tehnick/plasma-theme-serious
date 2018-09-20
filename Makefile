VERSION ?= 0.0.3
DESTDIR ?= $(HOME)/.local/share/plasma/desktoptheme

build:
	mkdir -p $(CURDIR)/out/Serious
	cp -a $(CURDIR)/src/* $(CURDIR)/out/Serious/

tarball: build
	rm -rf $(CURDIR)/out/serious-$(VERSION).tar.gz
	cd $(CURDIR)/out/ && tar -caf serious-$(VERSION).tar.gz Serious

install: build
	mkdir -p $(DESTDIR)
	rm -rf $(DESTDIR)/Serious
	cp -a $(CURDIR)/out/Serious $(DESTDIR)/

reload:
	kquitapp5 plasmashell && sleep 1 && plasmashell 2> /dev/null &

uninstall:
	rm -rf $(DESTDIR)/Serious
