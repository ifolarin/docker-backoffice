#! /bin/bash


#Clone and build openldap
git clone https://github.com/ifolarin/docker-openldap.git
cd docker-openldap/example/extend-osixia-openldap/
#docker build -t webbasedsol/openldap:0.3.4 .
#docker tag  webbasedsol/openldap:0.3.4 webbasedsol/openldap:latest
make tag_latest
cd -

#Clone and build phpLDAPadmin
git clone https://github.com/ifolarin/docker-phpLDAPadmin.git
cd docker-phpLDAPadmin/example/extend-dinkel-phpldapadmin/
docker build -t webbasedsol/phpldapadmin:0.1.2 . 
docker tag  webbasedsol/phpldapadmin:0.1.2 webbasedsol/phpldapadmin:latest
cd -

#Clone and build rainloop
git clone https://github.com/ifolarin/docker-rainloop.git
cd docker-rainloop/extend-runningman84-rainloop/
docker build -t webbasedsol/rainloop:0.2.0 .
docker tag  webbasedsol/rainloop:0.2.0 webbasedsol/rainloop:latest
cd -

#Clone and build s3-backup
git clone https://github.com/ifolarin/docker-s3-cron-backup.git
cd docker-s3-cron-backup
docker build -t webbasedsol/s3-cron-backup:0.1.0
docker tag  webbasedsol/s3-cron-backup:0.1.0 webbasedsol/s3-cron-backup:latest
cd -

