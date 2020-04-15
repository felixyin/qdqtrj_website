#!/bin/bash

git clone git@github.com:felixyin/qdqtrj_website.git
cd qdqtrj_website
sudo chmod 777 *.sh
./prun.sh
nohup ./gunicorn_start.sh >/dev/null 2>&1 &