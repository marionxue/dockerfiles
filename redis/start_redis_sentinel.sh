#!/bin/bash

docker container run --restart=always --name redis_sentinel_1 \
    --network host \
    -e SENTINEL_PORT=26379 \
    -e SENTINEL_QUORUM=2 \
    -e SENTINEL_DOWN_AFTER=5000 \
    -e SENTINEL_FAILOVER=5000 \
    --add-host redis-master:192.168.64.68 \
    -d sentinel:v5

docker container run --restart=always --name redis_sentinel_2 \
    --network host \
    -e SENTINEL_QUORUM=2 \
    -e SENTINEL_PORT=26380 \
    -e SENTINEL_DOWN_AFTER=5000 \
    -e SENTINEL_FAILOVER=5000 \
    --add-host redis-master:192.168.64.68 \
    -d sentinel:v5


docker container run --restart=always --name redis_sentinel_3 \
    --network host \
    -e SENTINEL_QUORUM=2 \
    -e SENTINEL_PORT=26381 \
    -e SENTINEL_DOWN_AFTER=5000 \
    -e SENTINEL_FAILOVER=5000 \
    --add-host redis-master:192.168.64.68 \
    -d sentinel:v5