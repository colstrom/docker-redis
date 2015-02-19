FROM colstrom/ubuntu-core

MAINTAINER chris@olstrom.com

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xb9316a7bc7917b12 \
    && echo 'deb http://ppa.launchpad.net/chris-lea/redis-server/ubuntu trusty main' >> /etc/apt/sources.list \
    && echo 'deb-src http://ppa.launchpad.net/chris-lea/redis-server/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y redis-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && ln -sf /dev/stdout /var/log/redis/redis-server.log

EXPOSE 6379

USER redis

ENTRYPOINT ["redis-server", "-", "daemonize", "no"]
