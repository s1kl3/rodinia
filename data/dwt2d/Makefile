include ../../common/data.mk

DATA_FILES = 192.bmp rgb.bmp

.PHONY: all
all: $(DATA_FILES)
	make -C inputGen

.PHONY: clean
clean:
	make -C inputGen clean
	rm -f $(DATA_FILES)
