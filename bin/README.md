# 运行说明

> 大概的部署过程如下(所有命令尽量在web root目录执行)：


## 1. 下载代码

1. 生成ssh public key
    ```
    ssh-keygen -t  rsa # 一路回车
    ```
2. 将一下key上传github 
    ```
    cat ~/.ssh/id_rsa.pub
    ```
3. 下载代码
    ```
    git clone git@github.com:felixyin/qdqtrj_website.git
    ```

## 2. 配置 

1. 安装mariadb，配置mariadb，略
2. 安装python3.8，配置python，略
3. 赋予执行权限
    ```
    sudo chmod 777 *.sh
    ```
4. 安装pyenv，并配置
5. env隔离环境，依赖库安装等：
    ```
    ./prun.sh
    ```
6. 安装memcached、supervisor
   ```
    sudo apt install supervisor memcached -y
   ```
7. 配置supervisor
   ```
   sudo vim /etc/supervisor/conf.d/qdqtrj_website.conf
   ```
   加入以下内容：
   ```
   [program:qdqtrj_website]
   command = /root/qdqtrj_website/bin/gunicorn_start.sh
   user = root
   autostart=true
   autorestart=true

   redirect_stderr = true
   stdout_logfile = /var/log/qdqtrj_website.log
   stderr_logfile=/var/log/qdqtrj_website.err
   ```
   载入配置：
   ```
   sudo supervisorctl update
   sudo supervisorctl reload
   ```
8. 配置nginx：
    ```
    cp bin/www.qdqtrj.com.conf /etc/nginx/conf.d/ # 复制后，按照实际情况进行修改
    nginx -s reload
    ```
   
## 3. 运行
1. 配置django setting.py：
    - 数据库连接信息
    - debug
    - 缓存等
2. 收集静态文件：
   ```
   python3.8 ./manage.py collectedstatic
   ```
3. 运行python：
   ```
   nohup ./gunicorn_start.sh >/dev/null 2>&1 &
   supervisorctl restart qdqtrj_website
   sudo /etc/init.d/memcached restart && sudo /etc/init.d/nginx restart
   ``` 
4. 打开浏览器，访问测试

## 4. 备份

> 采用git备份：用户上传的图片等文件和数据库导出脚本

1. 手动备份：`./bin/backup.sh`
    - 数据库导出到sql文件
    - git提交到github项目的backup目录
2. 自动备份和每天更新配置：
    ```
    crontab -e
    ```
   添加如下：
    ```
   # 每月1日凌晨2点执行备份
    0 0 2 1 * bash /root/qdqtrj_website/bin/backup.sh
   # 每天凌晨3点执行更新
    0 0 3 * * bash /root/qdqtrj_website/bin/update.sh
    ```


## 5. 文件说明  
    
- backup.sh ：备份数据库为单sql，并提交github仓库
- gunicorn_start.sh ：supervisor运行此文件
- prun.sh ：初始化venv，以及安装类库
- start_all_in_one.sh ： 第一次部署时执行，一次自动配置好全部环境，并运行
- update.sh ：从github仓库更新代码，并重新启动
- www.qdqtrj.com.conf ： nginx配置