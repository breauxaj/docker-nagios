FROM breauxaj/ubuntu:latest

RUN echo "deb https://repo.nagios.com/deb/$(lsb_release -cs) /" > /etc/apt/sources.list.d/nagios.list
RUN wget -qO - https://repo.nagios.com/GPG-KEY-NAGIOS-V2 | apt-key add -

RUN apt update \
  && apt install -y --no-install-recommends \
  nagios \
  nagios-plugins

 CMD ["/bin/bash"]

LABEL org.opencontainers.image.vendor="Breaux Heavy Industries" \
	org.opencontainers.image.url="https://breaux.io" \
	org.opencontainers.image.title="Nagios" \
	org.opencontainers.image.description="Nagios Server" \
	org.opencontainers.image.version="v0.0.1" \
	org.opencontainers.image.documentation="https://docs.breaux.io"