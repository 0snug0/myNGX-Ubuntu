#!/bin/bash

## Run from within the working directory of the nginx configuration.

docker run -d -P --name $1 -v $(pwd)/nginx/conf.d:/etc/nginx/conf.d -v $(pwd)/nginx/certs:/etc/nginx/certs -v $(pwd)/var/log/nginx:/var/log/nginx -v $(pwd)/var/www/html:/var/www/html -v $(pwd)/nginx/modsec/:/etc/nginx/modsec $2
