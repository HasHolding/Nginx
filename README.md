# Nginx

docker run -ti -v /demo:/shared -e CONF=/shared/etc/local.conf -p 80:80 ngx

 
 \demo
├───etc
└───www

--------------
# local.conf
server {
    listen       80;
    server_name  localhost;


    location / {
	    root   /shared/www;
        index  index.html index.htm;
    }

}

--------------
index.html

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo</title>
</head>
<body>
Demo
</body>
</html>