#!/usr/bin/with-contenv bashio

CONFIG_PATH="/config/threadfin"

# Zorg dat config folder bestaat
mkdir -p "$CONFIG_PATH"

# Start threadfin
exec /opt/threadfin/threadfin \
    -port=34400 \
    -config="$CONFIG_PATH"