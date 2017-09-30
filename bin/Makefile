all: clean build
PREFIX ?= /usr/local

clean:
	find . -maxdepth 1 -name 'openMVG_main_*' -exec rm \{} \;

build:
	find ../openmvg-bin/bin -name openMVG_main_* -type f -printf '%f\n' | parallel --gnu ln -sf docker-openMVG {}

install:
	find -maxdepth 1 -name 'openMVG*' -exec install \{} ${PREFIX}/bin/\{} \;

uninstall:
	find -maxdepth 1 -name 'openMVG*' -exec rm ${PREFIX}/bin/\{} \;


.PHONY: all build
