FROM postgres:10-alpine

COPY ./*.sh /usr/local/bin/

RUN \
  wget -q -O - https://github.com/restic/restic/releases/download/v0.8.3/restic_0.8.3_linux_amd64.bz2 | bunzip2 >> /usr/local/bin/restic \
  && chmod +x /usr/local/bin/restic

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["crond", "-f", "-d", "8"]
