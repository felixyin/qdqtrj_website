#!/bin/bash

cd /root/qdqtrj_website

# 更新代码
#git fetch --all
#git reset --hard origin/master
git pull

# 赋予执行权限
sudo chmod 777 -R bin/
# 重启网站
sudo supervisorctl update
sudo supervisorctl reload
supervisorctl restart qdqtrj_website
