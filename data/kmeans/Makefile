include ../../common/data.mk

DATA_FILES = 100 204800.txt 819200.txt kdd_cup

.PHONY: all
all: $(DATA_FILES)
	make -C inputGen

.PHONY: clean
clean:
	make -C inputGen clean
	rm -f $(DATA_FILES)
