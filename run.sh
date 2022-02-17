#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
; 运行模式
Mode = master
; 监听端口
Listen = $PORT
; 是否开启 Debug
Debug = true
[Redis]
Server = 127.0.0.1:6379
Password =
DB = 0
[Database]
Type = mysql
Host = containers-us-west-28.railway.app
Port = 7336
User = root
Password = ELWKs5fiISVGienNC2UR
Name = railway
Charset = utf8
TablePrefix = cd
EOF
(redis-server &) && (./cloudreve -c ./conf.ini)
