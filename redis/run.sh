#wget http://download.redis.io/releases/redis-3.0.5.tar.gz
#gunzip redis-3.0.5.tar.gz
#wget https://raw.githubusercontent.com/antirez/redis/2.8/redis.conf
sudo docker build --no-cache -t redis-3.0.5 .

