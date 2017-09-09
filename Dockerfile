FROM debian:stretch-slim
MAINTAINER Italo Maia <italo.maia@gmail.com>

ARG TORCH_LUA_VERSION
ENV TORCH_LUA_VERSION ${TORCH_LUA_VERSION}

RUN apt-get update -y &&\
    apt-get install -y\
    software-properties-common\
    libgraphicsmagick1-dev\
    libfftw3-dev\
    sox\
    libsox-dev\
    libsox-fmt-all\
    build-essential\
    gcc\
    g++\
    curl\
    cmake\
    libreadline-dev\
    git-core\
    libqt4-dev\
    libjpeg-dev\
    libpng-dev\
    ncurses-dev\
    imagemagick\
    libzmq3-dev\
    gfortran\
    unzip\
    gnuplot\
    gnuplot-x11\
    ipython3\
    libgfortran-6-dev

RUN git clone https://github.com/torch/distro.git /root/torch --recursive\
    && cd /root/torch\
    && ./install.sh

ENV PATH /root/torch/install/bin:$PATH