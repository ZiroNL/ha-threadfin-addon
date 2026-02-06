#!/usr/bin/with-contenv bash

CONFIG_PATH="/config/threadfin"

mkdir -p "$CONFIG_PATH"

exec /home/threadfin/bin/threadfin \
    -port=34400 \
    -config="$CONFIG_PATH"