# Rolf Niepraschk, 2024-07-19, Rolf.Niepraschk@gmx.de

.SUFFIXES : .dtx .ins .tex .ltx .dvi .ps .pdf .eps

MAIN = niceframe-type1

VERSION = $(shell cat ./VERSION)

DIST_DIR = $(MAIN)
DIST_FILES = README.md afm dvips map type1
ARCHNAME = $(MAIN)-$(VERSION).zip

README.md : VERSION
	@echo "The Type1 versions of the fonts" > $@
	@echo "" >> $@
	@echo "* bbding10.mf" >> $@
	@echo "* dingbat.mf" >> $@
	@echo "* karta15.mf" >> $@
	@echo "* umranda.mf" >> $@
	@echo "* umrandb.mf" >> $@
	@echo "" >> $@
	@echo "are created using the font editor \"fontforge\" with a bit" >> $@ 
	@echo "handwork for \"umranda.pfb\"." >> $@
	@echo "" >> $@
	@echo "Rolf Niepraschk, $(VERSION)" >> $@

dist : $(DIST_FILES)
	mkdir -p $(DIST_DIR)
	cp -pr $+ $(DIST_DIR)
	zip $(ARCHNAME) -r $(DIST_DIR)
	rm -rf $(DIST_DIR)
