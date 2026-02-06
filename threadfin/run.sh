#!/usr/bin/with-contenv bashio

CONFIG_PATH="/config/threadfin"

mkdir -p "$CONFIG_PATH"

exec /opt/threadfin/threadfin \
    -port=34400 \
    -config="$CONFIG_PATH"