all: subdirs
clean: subdirs

SUBDIRS = openmvg-build openmvg-bin bin

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

install:
	$(MAKE) -C bin install

.PHONY: all subdirs install $(SUBDIRS)

