#!/bin/bash
# Fast_open must be false on heroku
cat <<EOF
{
    "server":"127.0.0.1",
    "server_port":"8008",
    "password":"${PASSWORD}",
    "timeout":300,
    "method":"${ENCRYPT}",
    "mode": "tcp_only",
    "fast_open":false,
    "reuse_port":true,
    "no_delay":true,
    "plugin": "v2ray-plugin",
    "plugin_opts":"server;path=/shadow"
}
EOF