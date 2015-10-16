FROM colstrom/alpine:main
RUN apk-install redis
RUN mkdir /etc/redis \
    && mv /etc/redis.conf /etc/redis/
EXPOSE 6379
VOLUME ["/etc/redis/", "/var/lib/redis/"]
ENTRYPOINT ["redis-server", "/etc/redis/redis.conf", "--daemonize", "no"]
