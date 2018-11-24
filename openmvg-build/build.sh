#!/bin/bash
[ -z "$DEBIAN_MIRROR" ] && DEBIAN_MIRROR=deb.debian.org

docker build \
  --build-arg debian_mirror=$DEBIAN_MIRROR \
  --build-arg branch=master \
  --build-arg BUILD_TESTS=OFF \
  --build-arg BUILD_EXAMPLES=ON \
  -t openmvg-build \
  .
