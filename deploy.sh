#! /bin/bash


#Clone and build openldap
git clone https://github.com/ifolarin/docker-openldap.git
cd docker-openldap/example/extend-osixia-openldap/
docker build -t webbasedsol/openldap:0.3.5 .
docker tag  webbasedsol/openldap:0.3.5 webbasedsol/openldap:latest
cd -

#Clone and build phpLDAPadmin
git clone https://github.com/ifolarin/docker-phpLDAPadmin.git
cd docker-phpLDAPadmin/example/extend-dinkel-phpldapadmin/
docker build -t webbasedsol/phpldapadmin:0.1.3 . 
docker tag  webbasedsol/phpldapadmin:0.1.3 webbasedsol/phpldapadmin:latest
cd -

#Clone and build rainloop
git clone https://github.com/ifolarin/docker-rainloop-1.git
cd docker-rainloop-1/
docker build -t webbasedsol/rainloop:0.3.2 .
docker tag  webbasedsol/rainloop:0.3.2 webbasedsol/rainloop:latest
cd -

#Clone and build s3-backup
git clone https://github.com/ifolarin/docker-s3-cron-backup.git
cd docker-s3-cron-backup
docker build -t webbasedsol/s3-cron-backup:0.1.0 .
docker tag  webbasedsol/s3-cron-backup:0.1.0 webbasedsol/s3-cron-backup:latest
cd -

