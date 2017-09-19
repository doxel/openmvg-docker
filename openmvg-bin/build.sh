#!/bin/bash
[ -z "$DEBIAN_MIRROR" ] && DEBIAN_MIRROR=deb.debian.org

chmod a+rwX bin
docker run -v $(pwd):/mnt openmvg-build /mnt/strip_and_copy

docker build \
  --build-arg debian_mirror=$DEBIAN_MIRROR \
  -t openmvg-bin \
  .

