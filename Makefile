PROJECT := Serious
VERSION := 0.0.3

DESTDIR ?= $(HOME)/.local/share/plasma/desktoptheme

BUILDDIR = $(CURDIR)/out/$(PROJECT)
TARBALL = serious-$(VERSION).tar.gz

build: clean
	mkdir -p $(BUILDDIR)
	cp -a $(CURDIR)/src/* $(BUILDDIR)/
	gzip -S z $(BUILDDIR)/*/*.svg

clean:
	rm -rf $(BUILDDIR)

tarball: build
	cd $(CURDIR)/out && rm -f $(TARBALL)
	cd $(CURDIR)/out && tar -caf $(TARBALL) $(PROJECT)

install: build
	mkdir -p $(DESTDIR)
	rm -rf $(DESTDIR)/$(PROJECT)
	cp -a $(BUILDDIR) $(DESTDIR)/

reload:
	kquitapp5 plasmashell && sleep 1 && plasmashell 2> /dev/null &

uninstall:
	rm -rf $(DESTDIR)/$(PROJECT)
