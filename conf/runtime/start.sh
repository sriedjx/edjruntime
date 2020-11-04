#!/bin/bash

docker run -d --name edjruntime --env-file .env --env-file .env_user \
       -p 8085:8085 -p 1883:1883 \
       -p 9001:9001 -p 80:80 \
       -p 443:443 -p 53:53/UDP \
       -p 3001:3001 \
       -v  $(pwd)/config:/runtime/config \
       -v  $(pwd)/certificates:/runtime/certificates \
       -v  $(pwd)/storage:/runtime/storage \
       --network host \
       docker.pkg.github.com/edjx/edjruntime/edjruntime:alpha
