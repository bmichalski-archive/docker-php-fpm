FROM bmichalski/base

RUN \
  base/configure.sh && \
  apt-get install -y \
    php5-fpm

COPY conf/etc/php5/fpm /etc/php5/fpm
COPY conf/root/configure.sh /root/configure.sh
COPY conf/root/on-startup.sh /root/on-startup.sh

RUN chmod u+x /root/configure.sh
RUN chmod u+x /root/on-startup.sh

CMD \
  /root/on-startup.sh
