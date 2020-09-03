FROM frolvlad/alpine-glibc

RUN apk --no-cache add curl
RUN apk add --no-cache bash

COPY init-factorio /
COPY start-server /

VOLUME /factorio
EXPOSE 34197/udp

RUN ["/bin/bash", "/init-factorio"]
ENTRYPOINT ["/bin/bash", "start-server"]
