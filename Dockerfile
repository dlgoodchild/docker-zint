FROM alpine:latest

MAINTAINER dlgoodchild <me@davegoodchild.co.uk>

RUN apk add --update git alpine-sdk cmake libpng libpng-dev \
  && mkdir -p /root/zint && cd /root/zint \
  && git clone https://github.com/zint/zint.git . \
  && mkdir build \
  && cd build \
  && cmake .. \
  && make \
  && make install \
  && mkdir -p /home/dev/workspace

WORKDIR /home/dev/workspace
