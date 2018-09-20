DESTDIR ?= $(HOME)/.local/share/plasma/desktoptheme

build:
	echo "Do nothing!"

install:
	mkdir -p $(CURDIR)/out/Serious
	cp -a $(CURDIR)/src/* $(CURDIR)/out/Serious/
	mkdir -p $(DESTDIR)
	rm -rf $(DESTDIR)/Serious
	cp -a $(CURDIR)/out/Serious $(DESTDIR)/

reload:
	kquitapp5 plasmashell && sleep 1 && plasmashell 2> /dev/null &

uninstall:
	rm -rf $(DESTDIR)/Serious
