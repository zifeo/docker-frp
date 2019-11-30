FROM alpine:latest

ENV VERSION 0.30.0
ENV RELEASE frp_0.30.0_linux_amd64

RUN apk add --no-cache --virtual deps wget && \
    wget https://github.com/fatedier/frp/releases/download/v${VERSION}/$RELEASE.tar.gz && \
    tar zxvf $RELEASE.tar.gz && \
    mv $RELEASE/frps $RELEASE/frpc /usr/local/bin/ && \
    rm -r $RELEASE* && \
    apk del deps

WORKDIR /srv/frp

COPY frpc.ini .
COPY frps.ini .


