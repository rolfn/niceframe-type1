# Rolf Niepraschk, 2024-07-19, Rolf.Niepraschk@gmx.de

.SUFFIXES : .dtx .ins .tex .ltx .dvi .ps .pdf .eps

MAIN = niceframe-type1

VERSION = $(shell cat ./VERSION)

DIST_DIR = $(MAIN)
DIST_FILES = README.md afm dvips map type1
ARCHNAME = $(MAIN)-$(VERSION).zip

dist : $(DIST_FILES)
	mkdir -p $(DIST_DIR)
	cp -pr $+ $(DIST_DIR)
	zip $(ARCHNAME) -r $(DIST_DIR)
	rm -rf $(DIST_DIR)
