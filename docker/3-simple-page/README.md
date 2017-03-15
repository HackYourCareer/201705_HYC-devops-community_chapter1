
Test port forwarding and volumes:

    docker run -it --rm \
         -p 8080:80 \
         -v /some/content:/usr/share/nginx/html:ro \
         nginx

