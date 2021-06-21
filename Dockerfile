FROM alpine:3.14

ENV RSYSLOG_SERVER_TCP_PORT="514"
ENV RSYSLOG_SERVER_TCP_HOST="localhost"

RUN set -ex \
 && apk -q --clean-protected --no-cache --update add \
       rsyslog \
       rsyslog-mmutf8fix \
 && install -o nobody -g nogroup -d /var/spool/rsyslog

ADD configs/relay/rsyslog.conf /etc/rsyslog.conf

USER nobody:nogroup

ENTRYPOINT ["/usr/sbin/rsyslogd"]

CMD ["-n"]
