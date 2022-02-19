### docker run

docker run -p 80:80 -p 443:443 --name mynginx -v  /usr/local/docker/nginx/html:/usr/share/nginx/html -v /usr/local/docker/nginx/nginx.conf:/etc/nginx/nginx.conf -v  /usr/local/docker/nginx/logs:/var/log/nginx -d nginx

### 进入nginx容器

docker exec -it mynginx bash