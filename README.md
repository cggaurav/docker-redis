=== Docker Redis ===

A Dockerfile to be able spawn your redis instance via Docker
to primarily achieve three things

[1] Set a PASSWORD to access redis
[2] Sync Redis Dumps with S3 with a set interval
[3] Start Redis with the latest backup on reboot