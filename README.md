A Dockerfile to be able spawn your redis instance via Docker
to primarily achieve

1. Have a custom redis.conf file that you can set your password and specify backup strategies
2. Sync redis dumps that you can configure from your host easily. Though this docker images should be able to handle it at some point in the future

We have mounted a /redis folder in host where we'll save RDB snapshots and also pull sentinel and
redis configs

I have used my [redis.conf](https://gist.github.com/cggaurav/6911298/raw/327b159a98212fb8aa81f09e9eb7e7f3867642a5/redis.conf) | you are free
to use yours in Dockerfile post fork

* `docker build -t redis .`
* `docker run redis -h` for all options
* `docker run -v /redis:/redis redis` for defaults

* 6379 -> 6379