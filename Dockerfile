FROM ubuntu:22.04

RUN \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:ondrej/php && \
  apt-get update && \
  apt-get install -y php5.6-fpm

COPY conf/etc/php5/fpm       /etc/php5/fpm
COPY conf/root/configure.sh  /root/configure.sh
COPY conf/root/on-startup.sh /root/on-startup.sh

RUN chmod u+x /root/configure.sh
RUN chmod u+x /root/on-startup.sh

CMD /root/on-startup.sh
