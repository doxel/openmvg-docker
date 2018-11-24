PREFIX ?= /usr/local

all: clean build

clean:
	find . -maxdepth 1 -lname '*' -exec rm \{} \;

build:
	find ../openmvg-bin/bin -type f -executable -printf '%f\n' | parallel --gnu ln -sf docker-openMVG {}

install:
	find -maxdepth 1 -lname '*' -exec install \{} ${PREFIX}/bin/\{} \;

uninstall:
	find -maxdepth 1 -lname '*' -exec rm ${PREFIX}/bin/\{} \;

.PHONY: all clean build install uninstall
