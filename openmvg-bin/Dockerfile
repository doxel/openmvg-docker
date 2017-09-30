FROM debian:stretch-slim

ARG user=omvg
ARG debian_mirror=deb.debian.org

RUN useradd --create-home --shell /bin/bash $user \
 && sed -r -i -e s/deb.debian.org/$debian_mirror/ /etc/apt/sources.list \
 && apt-get update && apt-get install -y \
      libgomp1 \
      libjpeg62-turbo \
      libpng16-16 \
      libtiff5 \
 && apt-get autoclean \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install openmvg binaries
ADD bin/* /usr/bin/
COPY share/openMVG/ /usr/share/openMVG/

# check for missing libs
RUN if \
      ldd ./bin/* \
      | sed -r -n -e 's/\s([^(]+).*/\1/p' \
      | sort -u \
      | grep not.found \
    ; then \
      exit 1 \
    ; fi

USER $user
