#!/bin/bash

IP=118.27.10.139

ssh isucon@$IP cat /var/log/nginx/access.log |kataribe -f kataribe.toml
