#!/bin/bash

if [ -e /etc/squid/squid.conf ]; then
  rm -rf /etc/squid/squid.conf
fi

if [ -d /srv/squid ]; then
  rm -rf /srv/squid/*
fi
