#!/bin/bash

cat /var/log/nginx/access.log |kataribe -f kataribe.toml
