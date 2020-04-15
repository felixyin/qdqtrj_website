#!/bin/bash

cd /root/qdqtrj_website

# 备份数据库
mysqldump -u root -h localhost -p"Ybkk1027" qdqtrj_website --complete-insert  --result-file="backup/qdqtrj_website.sql" --add-drop-trigger
--skip-add-locks --skip-lock-tables --skip-extended-insert

# 提交文件到代码仓库
git status
git add .
echo '要备份的文件:'
git status
git commit -m "backup_at_`date +%y-%m-%d_%H-%m-%S`"
git status
git push
git status
echo '已备份成功'
