#!/bin/bash
[ -z "$DEBIAN_MIRROR" ] && DEBIAN_MIRROR=deb.debian.org

docker run -v $(pwd):/mnt openmvg-build /mnt/strip_and_copy

docker build \
  --build-arg debian_mirror=$DEBIAN_MIRROR \
  -t openmvg-bin \
  .

