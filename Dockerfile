FROM colstrom/alpine:main
RUN apk-install redis
RUN mkdir /etc/redis \
    && mv /etc/redis.conf /etc/redis/
EXPOSE 6379
ENTRYPOINT ["redis-server", "-", "daemonize", "no"]
