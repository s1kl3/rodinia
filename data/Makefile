DIRS := $(wildcard */)

.PHONY: all
all: $(DIRS)

.PHONY: $(DIRS)
$(DIRS):
	make -C $@

.PHONY: clean
clean:
	for DIR in $(DIRS); do make -C $$DIR clean; done
