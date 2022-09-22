FROM nginx:stable
ENV DHPARAM_SIZE=4096
LABEL org.opencontainers.image.source="https://github.com/sycured/nginx_ssl_config"
ADD *.sh /docker-entrypoint.d/
ADD *.conf /etc/nginx/conf.d/