### windows命令行下redis读取中文字符乱码

https://blog.csdn.net/qq_39391192/article/details/81410647

### docker run

docker run -p 6379:6379 --name myredis -v /usr/local/docker/redis/redis.conf:/etc/redis/redis.conf -v /usr/local/docker/redis/data:/data -d redis --requirepass Yyz09Yyz09


### 布隆过滤器
cd /usr/local/
wget http://download.redis.io/releases/redis-5.0.7.tar.gz
tar -zxvf redis-5.0.7.tar.gz
cd redis-5.0.7/
make
make install
redis-server redis.conf

git clone https://github.com/RedisBloom/RedisBloom.git
cd RedisBloom/
git checkout 2.2
make
cd ../
redis-server redis.conf --loadmodule ./RedisBloom/redisbloom.so