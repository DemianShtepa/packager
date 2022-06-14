FROM node:16.15-alpine3.16 as builder

ADD ./public-website /var/www

WORKDIR /var/www

RUN set -xe; \
    npm install; \
    npm run build;

FROM nginx:1.22.0-alpine

COPY --from=builder /var/www/build /var/www

COPY /nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

