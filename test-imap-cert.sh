#!/bin/bash

#docker-compose exec mail openssl s_client -connect 0.0.0.0:25 -starttls smtp -CApath /etc/ssl/certs/

openssl s_client -showcerts -connect mail.domain.com:143
openssl s_client -showcerts -connect mail.domain.com:993
openssl s_client -showcerts -connect mail.domain.com:587
