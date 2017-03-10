#!/bin/bash

set -e

docker run -d --name mynginx -p 8080:80 \
     -v $(PWD)/html:/usr/share/nginx/html:ro \
     nginx
