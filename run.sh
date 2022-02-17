#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
Mode = master
Listen = :${PORT}
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

./cloudreve -c ./conf.ini
