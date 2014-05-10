#!/bin/bash
cd ../
export PATH=/home/blacksun/node/0.10.26/bin/:$PATH
export CONF=./conf/blacksun.dev.conf.js
export NODE_PATH=/home/blacksun/node/0.10.26/lib/node_modules/:.

PNAME=a11
LOGPATH=/var/log/$PNAME

mkdir -p $LOGPATH
chown blacksun:blacksun -R $LOGPATH

forever -w --watchDirectory ../../ --spinSleepTime 4000 --minUpTime 1000 $1 server.js
