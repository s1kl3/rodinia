include ../../common/data.mk

DATA_FILES = power_1024  power_512  power_64  temp_1024  temp_512  temp_64

.PHONY: all
all: $(DATA_FILES)
	make -C inputGen

.PHONY: clean
clean:
	make -C inputGen clean
	rm -f $(DATA_FILES)
