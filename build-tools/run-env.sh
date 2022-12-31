#!/bin/bash

set -exu
__DIR__=$(
  cd "$(dirname "$0")"
  pwd
)
__PROJECT__=$(
  cd ${__DIR__}/../
  pwd
)

cd ${__DIR__}
cd ${__PROJECT__}



docker run --rm --name demo  -ti --init -v ${__PROJECT__}:/home/ -p 7010:7010 debian:11

docker run --rm --name swoole-src -ti --init \
-v ${__PROJECT__}:/swoole-src \
-v ${__PROJECT__}/../swoole-cli:/work/ \
-p 7010:7010 docker.io/jingjingxyk/build-swoole-cli:build-dev-1-alpine-edge-20221228T064532Z