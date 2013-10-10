FROM base
MAINTAINER cggaurav
RUN mkdir /redis
RUN apt-get update
RUN apt-get install -y make gcc wget
RUN wget http://download.redis.io/redis-stable.tar.gz -O /tmp/redis.tar.gz
RUN (cd /tmp && tar zxf redis.tar.gz && cd redis-* && make install && cp redis.conf sentinel.conf /redis/)
RUN wget -O /redis/redis.conf https://gist.github.com/cggaurav/6910968/raw/9b90646ccc4d9eae29e8b40d883d20b9fa30d880/redis.conf
RUN rm -rf /tmp/*
EXPOSE 6379:6379
ENTRYPOINT ["/usr/local/bin/redis-server"]
CMD ["/redis/redis.conf"]
