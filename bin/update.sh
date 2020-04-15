#!/bin/bash

cd /root/qdqtrj_website

# fixme 警告，警告！！！ 不要强制更新，下面两行不要打开，否则可能会丢失备份数据，以及用户上传的图片文件
#git fetch --all
#git reset --hard origin/master

# 更新代码
git pull

# 赋予执行权限
sudo chmod 777 -R bin/
# 重启网站
sudo supervisorctl update
sudo supervisorctl reload
supervisorctl restart qdqtrj_website
