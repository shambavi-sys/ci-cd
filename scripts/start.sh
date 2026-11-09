 #!/bin/bash
set -e

APP_DIR=/home/ec2-user/app

mkdir -p "$APP_DIR"
cd "$APP_DIR"

if [ -f app.js ]; then
    pkill -f "node app.js" || true
    nohup node app.js > app.log 2>&1 &
fi
