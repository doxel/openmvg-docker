all: subdirs
clean: subdirs

SUBDIRS = openmvg-build openmvg-bin bin

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: all subdirs $(SUBDIRS)

