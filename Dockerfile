FROM alpine:3.4
MAINTAINER Michal <michal@reapnet.io>

RUN apk update &&\
	apk --no-cache add wget ca-certificates &&\
	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://raw.githubusercontent.com/sgerrand/alpine-pkg-glibc/master/sgerrand.rsa.pub &&\
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk &&\
	apk add glibc-2.23-r3.apk

RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-bin-2.23-r3.apk &&\
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-i18n-2.23-r3.apk &&\
	apk add glibc-bin-2.23-r3.apk glibc-i18n-2.23-r3.apk &&\
	/usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8
