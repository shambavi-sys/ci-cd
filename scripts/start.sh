#!/bin/bash
set -e

cd /var/www/html

if [ -f app.js ]; then
    pkill -f "node app.js" || true
    nohup node app.js > app.log 2>&1 &
fi
