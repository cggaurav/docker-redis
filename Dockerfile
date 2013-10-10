FROM base
MAINTAINER cggaurav
RUN mkdir /redis
RUN apt-get update
RUN apt-get install -y make gcc wget
RUN wget http://download.redis.io/redis-stable.tar.gz -O /tmp/redis.tar.gz
RUN (cd /tmp && tar zxf redis.tar.gz && cd redis-* && make install && cp redis.conf sentinel.conf /redis/)
RUN wget --no-check-certificate -O ./redis.conf https://gist.github.com/cggaurav/6911298/raw/327b159a98212fb8aa81f09e9eb7e7f3867642a5/redis.conf
RUN mv redis.conf /redis
RUN rm -rf /tmp/*
EXPOSE 6379:6379
ENTRYPOINT ["/usr/local/bin/redis-server"]
CMD ["/redis/redis.conf"]
