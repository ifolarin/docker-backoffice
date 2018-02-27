#!/bin/bash

docker-compose logs --tail=30 -f $@
