#!/usr/bin/env bash

# Check our uid/gid, change if env variables require it
if [ "$( id -u transmission )" -ne "${LUID}" ]; then
    usermod -o -u ${LUID} transmission
fi

if [ "$( id -g transmission )" -ne "${LGID}" ]; then
    groupmod -o -g ${LGID} transmission
fi

# Set permissions
chown -R transmission:transmission /config

exec runuser -l transmission -s /bin/sh -c 'transmission-daemon -f --config-dir /config/'
