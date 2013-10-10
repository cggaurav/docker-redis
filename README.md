=== Docker Redis ===

A Dockerfile to be able spawn your redis instance via Docker
to primarily achieve

[1] Have a custom redis.conf file that you can set your password and specify backup strategies
[2] Sync redis dumps that you can configure from your host easily. Though this docker images 
should be able to handle it at some point in the future

We have mounted a /redis folder in host where we'll save dumps and also pull sentinel and
redis configs

* `docker build -t redis .`
* `docker run redis -h` for all options
* `docker run redis` for defaults

* 6379 -> 6379