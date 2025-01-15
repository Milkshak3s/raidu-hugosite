FROM nginx:alpine-slim

COPY --chown=nginx ./nginx.conf /etc/nginx/conf.d/default.conf

COPY --chown=nginx --from=tarampampam/error-pages /opt/html/ghost /usr/share/nginx/errorpages/_error_pages

RUN rm -rf /usr/share/nginx/html && mkdir /usr/share/nginx/html

COPY public/ /usr/share/nginx/html/
