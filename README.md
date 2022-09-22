# nginx_ssl_config

My SSL/TLS config

Rated A+ at https://www.ssllabs.com/ssltest/

## Docker image

Docker Hub: https://hub.docker.com/r/sycured/ngx

If `/etc/nginx/dhparam.pem` doens't exist, it'll generate it. This generation can be tuned using `DHPARAM_SIZE` environment variable, by default it's 4096.

## WARNING

You have additional security lines in security.conf

## How to install

    cp ssl.conf /etc/nginx/ && cd /etc/nginx && openssl dhparam -out dhparam.pem 4096

## How to use

Just add this inline in all virtualhosts / sites

    include /etc/nginx/ssl.conf;

Just after this line, you need to add lines about your certificates

    ssl_certificate /etc/nginx/ssl/yourdomain_fullchain.pem;
    ssl_certificate_key /etc/nginx/ssl/yourdomain_privkey.pem;
    ssl_trusted_certificate /etc/nginx/ssl/yourdomain_chain.pem;
