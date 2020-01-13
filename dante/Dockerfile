FROM alpine:3.9

COPY src/sockd.conf /etc/

COPY src/docker-entrypoint /usr/local/bin

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing dante-server && \
  chmod 0644 /etc/sockd.conf && \
  chmod 0755 /usr/local/bin/docker-entrypoint && \
  rm /etc/sockd.conf.apk-new

ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]

CMD [ "/usr/sbin/sockd" ]
