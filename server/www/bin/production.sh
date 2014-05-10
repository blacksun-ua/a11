#!/bin/bash
export PATH=/home/blacksun/node/0.10.26/bin/:$PATH
export CONF=../conf/blacksun.conf.js
export NODE_PATH=/home/blacksun/node/0.10.26/lib/node_modules/:.

PNAME=a11
LOGPATH=/var/log/$PNAME

mkdir -p $LOGPATH
chown blacksun:blacksun -R $LOGPATH

forever --pidFile $LOGPATH/$PNAME.pid -a -p $LOGPATH -l $LOGPATH/startup.log -o $LOGPATH/startup.log -e $LOGPATH/startup.log -w --watchDirectory ../../ --spinSleepTime 4000 --minUpTime 1000 $1 server.js
