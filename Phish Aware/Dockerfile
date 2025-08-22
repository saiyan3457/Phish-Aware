FROM alpine:latest
LABEL MAINTAINER="https://github.com/saiyan3457/Phish-Aware"
WORKDIR /Phishaware/
ADD . /phishaware
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./phishaware.sh"
