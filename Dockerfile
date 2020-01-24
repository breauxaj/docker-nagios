FROM breauxaj/alpine:latest

RUN apk add apache2 nagios nagios-plugins nagios-web \
  && rm -rf /var/cache/apk/*

WORKDIR /etc/nagios

VOLUME /etc/nagios

 CMD ["/bin/bash"]

LABEL org.opencontainers.image.vendor="Breaux Heavy Industries" \
	org.opencontainers.image.url="https://breaux.io" \
	org.opencontainers.image.title="Nagios" \
	org.opencontainers.image.description="Nagios Server" \
	org.opencontainers.image.version="v0.0.1" \
	org.opencontainers.image.documentation="https://docs.breaux.io"