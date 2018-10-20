#! /bin/bash


#Clone and build openldap
git clone https://github.com/ifolarin/docker-openldap.git
cd docker-openldap/example/extend-osixia-openldap/
docker build -t webbasedsol/openldap:0.4.0 .
docker tag  webbasedsol/openldap:0.4.0 webbasedsol/openldap:latest
cd -

#Clone and build phpLDAPadmin
git clone https://github.com/ifolarin/docker-phpLDAPadmin.git
cd docker-phpLDAPadmin/example/extend-dinkel-phpLDAPadmin/
docker build -t webbasedsol/phpldapadmin:0.1.2 . 
docker tag  webbasedsol/phpldapadmin:0.1.2 webbasedsol/phpldapadmin:latest
cd -

#Clone and build rainloop
git clone https://github.com/ifolarin/docker-webmail.git
cd docker-webmail/
docker build -t webbasedsol/webmail:0.4.0 .
docker tag  webbasedsol/webmail:0.4.0 webbasedsol/webmail:latest
cd -

#Clone and build s3-backup
git clone https://github.com/ifolarin/docker-s3-cron-backup.git
cd docker-s3-cron-backup
docker build -t webbasedsol/s3-cron-backup:0.1.0 .
docker tag  webbasedsol/s3-cron-backup:0.1.0 webbasedsol/s3-cron-backup:latest
cd -

