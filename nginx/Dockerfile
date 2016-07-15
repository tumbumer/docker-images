FROM nginx:1.10-alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN \
  mkdir -p /data/conf /data/html \
  && chown -R nginx:nginx /data/conf /data/html
VOLUME /data/conf /data/html
