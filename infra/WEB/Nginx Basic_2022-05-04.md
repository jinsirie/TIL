---
attachments: [Clipboard_2022-05-03-14-34-31.png, Clipboard_2022-05-04-10-07-19.png]
title: Nginx Basic_2022-05-04
created: '2022-05-03T05:16:50.621Z'
modified: '2022-05-04T01:15:09.000Z'
---

## Nginx Basic_2022-05-04

### 1.nginx.conf 설정

임시로 https 설정을 하기 전에, 해당 인덱스 파일 생성 (기준 UBuntu 18.04 , apt install nginx)





```
 ##nginx.conf
 
 root /var/www/html;

        # Add index.php to the list if you are using PHP
        index index.html index.htm index.nginx-debian.html;
        #해당 경로에 맞는 index.html 생성한다.
```


```
systemctl status nginx
systemctl stop/start nginx
```

![](@attachment/https://github.com/jinsirie/TIL/blob/8b1dc64cab8217274e4c4c7d9cbc3879a5584bb4/img/Clipboard_2022-05-03-14-34-31.png)



### 2. https 인증서 설치


#### 2.1 인증서 테스트
 Ref1. https://www.manualfactory.net/13639
 Ref2. https://www.freenom.com/en/index.html?lang=en






```
user www-data;
worker_processes auto;
pid /run/nginx.pid;
include /etc/nginx/modules-enabled/*.conf;
```



```
events {
        worker_connections 768;
        # multi_accept on;
}
```



```
http {

        ##
        # Basic Settings
        ##

        sendfile on;
        tcp_nopush on;
        tcp_nodelay on;
        keepalive_timeout 65;
        types_hash_max_size 2048;
        # server_tokens off;

        # server_names_hash_bucket_size 64;
        # server_name_in_redirect off;

        include /etc/nginx/mime.types;
        default_type application/octet-stream;

        ##
        # SSL Settings
        ##

        ssl_protocols TLSv1 TLSv1.1 TLSv1.2; # Dropping SSLv3, ref: POODLE
        ssl_prefer_server_ciphers on;

        ##
        # Logging Settings
        ##

        access_log /var/log/nginx/access.log;
        error_log /var/log/nginx/error.log;

        ##
        # Gzip Settings
        ##

        gzip on;

        # gzip_vary on;
        # gzip_proxied any;
        # gzip_comp_level 6;
        # gzip_buffers 16 8k;
        # gzip_http_version 1.1;
        # gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/j
avascript;

        ##
        # Virtual Host Configs
        ##

        include /etc/nginx/conf.d/*.conf;
        //SSL CONFIGURATION 참조한다//
        include /etc/nginx/sites-enabled/*;
}
 
```





#### 2.2 NGINX_SSL Configuration은 아래와 같다. 만약 기존에 apche 인증서를 받았다면 해당 인증서의 개인키(Private key)와 CSR(Certicate)를 넣어 SSL적용을 진행하도록 한다.

```
root@jinsil:/etc/nginx/conf.d# cat nginx-ssl.conf 
server {
    listen       443    ssl;
    server_name  logger.co.kr;
    #root         /etc/nginx;
    root          /var/www/html;   
 
    ssl                 on;
    ssl_certificate     /home/jinsil/SSL/JINSIL.crt;
    ssl_certificate_key /home/jinsil/SSL/JINSIL.key;
    ssl_session_timeout 10m;
    ssl_session_cache   shared:SSL:10m;
    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_prefer_server_ciphers   on;

     
    
    
    location / {
    }
}


```



![](@attachment/https://github.com/jinsirie/TIL/blob/8b1dc64cab8217274e4c4c7d9cbc3879a5584bb4/img/Clipboard_2022-05-04-10-07-19.png)
