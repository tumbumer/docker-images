FROM nginx:1.10-alpine
RUN \
  mkdir -p /data/conf /data/html \
  && chown -R nginx:nginx /data/conf /data/html \
  && echo 'include /data/conf/nginx.conf;' > /etc/nginx/nginx.conf
VOLUME /data/conf /data/html
