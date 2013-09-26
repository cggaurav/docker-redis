FROM base
MAINTAINER cggaurav
RUN apt-get update
RUN apt-get install -y make gcc wget
RUN wget http://download.redis.io/redis-stable.tar.gz -O /tmp/redis.tar.gz
RUN (cd /tmp && tar zxf redis.tar.gz && cd redis-* && make install && cp redis.conf sentinel.conf /etc/)
RUN rm -rf /tmp/*
EXPOSE 6379
ENTRYPOINT ["/usr/local/bin/redis-server -requirepass PASSWORD"]
CMD ["/etc/redis.conf"]