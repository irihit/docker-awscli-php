FROM alpine:3.8

MAINTAINER Tsukasa Irihi <tsukasa.irihi@gmail.com>

RUN apk -v --update add py-pip php7 \
    && pip install awscli \
    && rm -rf /var/cache/apk/*

CMD ["bin/sh"]

