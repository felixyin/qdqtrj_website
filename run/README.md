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
   
## 3. 运行

1. 配置nginx：
    ```
    cp test.conf /etc/nginx/conf.d/ # 按照实际修改
    nginx -s reload
    ```
2. 收集静态文件：
   ```
   python3.8 ./manage.py collectedstatic
   ```
3. 运行python：
   ```
   nohup ./gunicorn_start.sh >/dev/null 2>&1 &
   ``` 
4. 打开浏览器，访问测试

