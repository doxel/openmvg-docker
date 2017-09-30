all: subdirs

SUBDIRS = openmvg-build openmvg-bin bin

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

.PHONY: all subdirs $(SUBDIRS)

