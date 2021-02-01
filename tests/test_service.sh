#!/bin/bash
/etc/init.d/squid start
sleep 1
/etc/init.d/squid status | grep '(running)\|squid is running'
ps ax | grep squid | grep squid.conf

