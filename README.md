# nginx_ssl_config

My SSL/TLS config

Rated A+ at https://www.ssllabs.com/ssltest/

## WARNING

I've added this lines not directly linked to SSL/TLS but it's security rules

    add_header X-Frame-Options DENY;
    add_header X-Content-Type-Options nosniff;
    add_header X-XSS-Protection "1; mode=block";

## How to install

    cp ssl.conf /etc/nginx/ && cd /etc/nginx && openssl dhparam -out dhparam.pem 4096

## How to use

Just add this inline in all virtualhosts / sites

    include /etc/nginx/ssl.conf;

Just after this line, you need to add lines about your certificates

    ssl_certificate /etc/nginx/ssl/yourdomain_fullchain.pem;
    ssl_certificate_key /etc/nginx/ssl/yourdomain_privkey.pem;
    ssl_trusted_certificate /etc/nginx/ssl/yourdomain_chain.pem;
