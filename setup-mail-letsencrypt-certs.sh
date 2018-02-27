#!/bin/bash

docker run -d --rm \
	--name imap \
	-e "VIRTUAL_HOST"=mail.${DOMMANIN},imap.${DOMAINNAME},smtp.${DOMAINNAME} \
	-e "LETSENCRYPT_HOST"=mail.${DOMMANIN},imap.${DOMAINNAME},smtp.${DOMAINNAME} \
	-e "LETSENCRYPT_EMAIL"=${WEBMASTER_EMAIL} \
	--env-file .env \
	nginx
