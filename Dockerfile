FROM bmichalski/base

RUN \
  base/configure.sh && \
  locale-gen en_US.UTF-8 && \
  export LANG=en_US.UTF-8 && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:ondrej/php5-5.6 && \
  apt-get update && \
  apt-get install -y \
    php5-fpm

COPY conf/etc/php5/fpm /etc/php5/fpm
COPY conf/root/configure.sh /root/configure.sh
COPY conf/root/on-startup.sh /root/on-startup.sh

RUN chmod u+x /root/configure.sh
RUN chmod u+x /root/on-startup.sh

CMD \
  /root/on-startup.sh
