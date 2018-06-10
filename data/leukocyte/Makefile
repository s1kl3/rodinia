include ../../common/data.mk

DATA_FILES = testfile.avi

$(DATA_FILES): $(DATA_FILES).xz

$(DATA_FILES).xz: $(sort $(wildcard $(DATA_FILES).xz.part_*))
	cat $^ > $@

.PHONY: clean
clean:
	rm -f $(DATA_FILES).xz $(DATA_FILES)
