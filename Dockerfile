# pull base image
FROM ubuntu:18.04
<<<<<<< HEAD
MAINTAINER kevin.wang <kevin.wang@104.com.tw>

# install squid
RUN set -ex \
      && apt-get update && apt-get install -y squid
=======
MAINTAINER kevin.wang <kevin.wang@microfusion.tw>

# install squid
RUN set -ex \
      && apt-get update && apt-get install -y squid && apt-get install -y curl && apt-get install -y wget
>>>>>>> f83a0f561854d7faae60b18d8f711f7b0523aff5

# init
COPY . /
RUN cp squid.conf /etc/squid/.
RUN /etc/init.d/squid start
<<<<<<< HEAD

=======
>>>>>>> f83a0f561854d7faae60b18d8f711f7b0523aff5
