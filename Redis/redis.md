### docker安装redis并以配置文件方式启动

https://blog.csdn.net/weixin_42456466/article/details/87270959

### windows命令行下redis读取中文字符乱码

https://blog.csdn.net/qq_39391192/article/details/81410647

### docker run

docker run -p 6379:6379 --name myredis -v /usr/local/docker/redis/redis.conf:/etc/redis/redis.conf -v /usr/local/docker/redis/data:/data -d redis redis-server /etc/redis/redis.conf --appendonly yes


### 修改密码

requirepass 123456

