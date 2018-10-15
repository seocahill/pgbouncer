FROM alpine:latest

LABEL author="seo.cahill@gmail.com"

RUN \
  apk add --update --repository http://nl.alpinelinux.org/alpine/edge/community pgbouncer \
  && chmod 777 /var/log/pgbouncer

EXPOSE 6432

CMD [ "pgbouncer", "/etc/pgbouncer/pgbouncer.ini", "-u", "nobody" ]