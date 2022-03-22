FROM nginx:stable
LABEL org.opencontainers.image.source="https://github.com/sycured/nginx_ssl_config"
ADD ssl.conf /etc/nginx/conf.d/ssl.conf
