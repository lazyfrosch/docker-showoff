FROM alpine:3.7

ARG BUILD_DATE
ARG VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
	  org.label-schema.name="showoff presentation tool" \
	  org.label-schema.description="ShowOff is a Sinatra web app that reads simple configuration files for a presentation" \
	  org.label-schema.url="https://puppetlabs.github.io/showoff/" \
	  org.label-schema.vcs-ref=$VCS_REF \
	  org.label-schema.vcs-url="https://github.com/lazyfrosch/docker-showoff" \
	  org.label-schema.vendor="Markus Frosch <markus@lazyfrosch.de>" \
	  org.label-schema.schema-version="1.0"

ENV SHOWOFF_VERSION=0.9.11.1 \
	PKGS="ruby ruby-nokogiri libstdc++ git curl" \
	PKGS_DEV="ruby-dev build-base cmake"

RUN apk update \
 && apk add ${PKGS} ${PKGS_DEV} \
 && gem install --no-document showoff --version=${SHOWOFF_VERSION} \
 && apk del ${PKGS_DEV} \
 && rm -rf /root/.gem \
 && rm -rf /var/cache/apk/* \
 && curl -LsS "https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64" > /usr/sbin/gosu \
 && chmod +x /usr/sbin/gosu

VOLUME /showoff

EXPOSE 9090

COPY entrypoint.sh /entrypoint
ENTRYPOINT [ "/entrypoint" ]
CMD showoff serve
