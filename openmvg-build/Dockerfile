FROM debian:stretch-slim

ARG user=omvg
ARG debian_mirror=deb.debian.org

# setup system and get build dependencies
RUN useradd --create-home --system --shell /bin/bash $user \
 && sed -r -i -e s/deb.debian.org/$debian_mirror/ /etc/apt/sources.list \
 && apt-get update && apt-get install -y \
      build-essential \
      cmake \
      graphviz \
      git \
      libpng-dev \
      libjpeg-dev \
      libtiff-dev \
      libxxf86vm1 \
      libxxf86vm-dev \
      libxi-dev \
      libxrandr-dev \
      python-dev \  
      python-pip

USER $user
ENV PATH $PATH:/home/$user/bin/

# openMVG build options
ARG branch=develop
ARG BUILD_TESTS=OFF
ARG BUILD_EXAMPLES=ON

# clone build and install
WORKDIR /home/$user
RUN mkdir src \
 && git clone --single-branch -b $branch --recursive https://github.com/openmvg/openmvg src/openMVG \
 && cd src/openMVG \
 && git submodule update --init --recursive \
 && mkdir build \
 && cd build \
 && cmake \
      -DCMAKE_BUILD_TYPE=RELEASE \
      -DCMAKE_INSTALL_PREFIX="/home/$user/local" \
      -DOpenMVG_BUILD_TESTS=$BUILD_TESTS \
      -DOpenMVG_BUILD_EXAMPLES=$BUILD_EXAMPLES \
      . \
      ../src/ \
 && make -j $(nproc) \
 && if [ $BUILD_TESTS = ON ] ; then  make test ; fi  \
 && make install

CMD ["/bin/bash", "-l"]
