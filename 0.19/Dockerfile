FROM alpine:3.7

ENV SHOWOFF_VERSION=0.19.3 \
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
