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


exit 0
# debian
apt install  autoconf automake  clang lld libtool  cmake  tini

exit 0
# alpine

sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
apk update && \
apk add alpine-sdk xz autoconf automake linux-headers clang-dev clang lld libtool  cmake  tini && \
apk add  flex bison re2c pkgconf ca-certificates gnutls-dev