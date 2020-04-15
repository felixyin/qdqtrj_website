# 运行说明

> 大概的部署过程如下：


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
   command = /root/qdqtrj_website/run/gunicorn_start.sh
   user = root
   autostart=true
   autorestart=true

   redirect_stderr = true
   stdout_logfile = /var/log/qdqtrj_website.log
   stderr_logfile=/var/log/qdqtrj_website.err
   ```
8. 配置nginx：
    ```
    cp test.conf /etc/nginx/conf.d/ # 复制后，按照实际情况进行修改
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
   sudo supervisorctl update
   sudo supervisorctl reload
   sudo /etc/init.d/memcached restart && sudo /etc/init.d/nginx restart
   ``` 
4. 打开浏览器，访问测试

## 4. 备份

> 采用git备份：用户上传的图片等文件和数据库导出脚本

1. 数据库导出到sql
2. git提交