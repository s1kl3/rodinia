include ../../common/data.mk

.PHONY: all
all: inputGen/hurricanegen
	inputGen/hurricanegen 655360 64

inputGen/hurricanegen:
	make -C inputGen

.PHONY: clean
clean:
	rm -f *.db *.txt
	make -C inputGen clean
