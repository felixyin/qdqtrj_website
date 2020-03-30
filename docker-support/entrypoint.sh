#!/bin/sh
cd /app

if [ $# -eq 0 ]; then
  nginx
  gunicorn website.wsgi:application \
    --name djangoblog \
    --user root \
    --group root \
    --bind 127.0.0.1:8888\
    --log-level=debug \
    --log-file=- \
    --workers $(grep -c ^processor /proc/cpuinfo) \
    --worker-class gevent
else
  python3 ./manage.py $1
fi
