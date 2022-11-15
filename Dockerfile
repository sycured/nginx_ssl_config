FROM nginx:stable
ENV DHPARAM_SIZE=4096
LABEL org.opencontainers.image.source="https://github.com/sycured/nginx_ssl_config"
ADD 99-dhparam.sh /docker-entrypoint.d/
ADD security.conf /etc/nginx/conf.d/
ADD ssl.conf /etc/nginx/