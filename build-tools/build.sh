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

# make clean

phpize --clean


phpize



./configure --help


./configure \
--enable-swoole \
--enable-openssl \
--enable-sockets \
--enable-mysqlnd  \
--enable-swoole-curl \
--enable-cares  \
--enable-brotli \
--with-cares-dir=/usr/cares \
--with-openssl-dir=/usr/openssl

# --with-brotli-dir=/usr/brotli
# --with-cares-dir=/usr/cares


# cmake .
# cmake . -DCARES-DIR=/usr/cares -DBROTLI-DIR=/usr/brotli

make
exit 0
# make -j $(`nproc 2> /dev/null || sysctl -n hw.ncpu`)
