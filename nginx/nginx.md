### docker run

docker run --name nginx -p 80:80 -p 443:443 -d nginx

docker cp d609ca73f9af:/etc/nginx/ /usr/local/docker/nginx/conf/
docker cp d609ca73f9af:/usr/share/nginx/html/ /usr/local/docker/nginx/html/
docker cp d609ca73f9af:/var/log/nginx/ /usr/local/docker/nginx/logs/
注：docker cp d609ca73f9af 中的 "d609ca73f9af" 为容器ID

docker run --name nginx -p 80:80 -p 443:443 -v /usr/local/docker/nginx/conf/:/etc/nginx/ -v /usr/local/docker/nginx/html/:/usr/share/nginx/html/ -v /usr/local/docker/nginx/logs/:/var/log/nginx/ --privileged=true -d nginx
