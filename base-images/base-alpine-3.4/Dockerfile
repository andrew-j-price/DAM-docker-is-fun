FROM alpine:3.4
MAINTAINER Andrew Price <andrew.j.price@gmail.com>

RUN apk add --update \
    ansible bash curl git monit openssh \
    python py-pip rsync tcpdump vim \
    && rm -rf /var/cache/apk/*
RUN pip install Flask
