#!/bin/sh

#docker pull haocen/certbot

GetCert(){
  docker run -it \
  --rm \
  -v $(pwd)/config/letsencrypt/etc:/etc/letsencrypt \
  -v $(pwd)/config/letsencrypt/lib:/var/lib/letsencrypt \
  -v $(pwd)/config/letsencrypt/www:/var/www/.well-known \
  haocen/certbot -t certonly --webroot -w /var/www \
  --keep-until-expiring \
  $@
}

echo "Getting certificates..."
GetCert -d mail.example.org -d example.org -d www.example.org -d lssp.example.org -d ldap.example.org -d imap.example.org -d smtp.example.org





                