# pull base image
FROM ubuntu:18.04
MAINTAINER kevin.wang <kevin.wang@microfusion.tw>

# install squid
RUN set -ex \
      && apt-get update && apt-get install -y squid && apt-get install -y curl

# init
COPY . /
RUN cp squid.conf /etc/squid/.
RUN /etc/init.d/squid start
