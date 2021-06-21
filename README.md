# RSyslog relay

RSyslog tcp/udp relay to tcp endpoint

## Basic usage

`$ docker run -e RSYSLOG_SERVER_TCP_HOST=<host> RSYSLOG_SERVER_TCP_PORT=<port> timansky/rsyslog-relay:latest`

## Environment variables

  - RSYSLOG_SERVER_TCP_HOST: ip or fqdn of syslog server (default: localhost)
  - RSYSLOG_SERVER_TCP_PORT: port of syslog server (default: 514)


## `RSyslog` documentation
See [here](https://www.rsyslog.com/doc/master/index.html) for the documentation.
