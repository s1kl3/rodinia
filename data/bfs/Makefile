include ../../common/data.mk

DATA_FILES = graph1MW.txt graph4096.txt graph65536.txt

.PHONY: all
all: $(DATA_FILES)
	make -C inputGen

.PHONY: clean
clean:
	make -C inputGen clean
	rm -f $(DATA_FILES)
