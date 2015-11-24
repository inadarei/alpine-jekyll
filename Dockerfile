FROM alpine:3.2
MAINTAINER Irakli Nadareishvili @inadarei

ENV REFRESHED_AT 2015-11-24

RUN apk upgrade --update \
 && apk add readline readline-dev libxml2 libxml2-dev \
        libxslt libxslt-dev zlib-dev zlib \
        ruby ruby-dev python yaml yaml-dev \
        libffi-dev build-base nodejs git \
        ruby-io-console ruby-irb ruby-json ruby-rake ruby-rdoc \
 && gem install jekyll \
 && rm -rf /root/src /tmp/* /usr/share/man /var/cache/apk/* \
    /root/.npm /root/.node-gyp /usr/lib/node_modules/npm/man \
		/usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html \
 && apk search --update
 
 ENTRYPOINT ["jekyll"]