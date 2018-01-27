#!/bin/sh

#docker pull haocen/certbot

GetCert(){
  docker run --rm \
  -ti \
  -v $PWD/log/:/var/log/letsencrypt \
  -v $PWD/etc/:/etc/letsencrypt/ \
  -p 443:443 \
  -p 80:80 \
  haocen/certbot:latest certonly --standalone \
  $@
}

mkdir -p config/letsencrypt/log
mkdir -p config/letsencrypt/etc
cd config/letsencrypt

echo "Getting certificates..."
GetCert -d mail.example.org -d example.org -d www.example.org -d lssp.example.org -d ldap.example.org -d imap.example.org -d smtp.example.org
cd - 




								