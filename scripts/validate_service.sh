#!/bin/bash
squid -k parse
systemctl status squid | grep running
ps ax | grep squid | grep squid.conf

