#!/bin/bash -ex
CURRENT_REVISION=`git rev-parse --short HEAD |cut -c 1-7`

git fetch
git reset --hard origin/master
# git reset --hard bench

cd webapp/go/
make

# sudo cp isubata.golang.service /etc/systemd/system/
# sudo systemctl daemon-reload
sudo systemctl restart torb.go
cp /var/log/nginx/access.log  ~/logs/access-`date +'%s'`-$CURRENT_REVISION.log
sudo bash -c 'echo > /var/log/nginx/access.log;'
