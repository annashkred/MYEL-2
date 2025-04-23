FROM nginx:alpine

COPY ./src/ /usr/share/nginx/html/src/
COPY ./images/ /usr/share/nginx/html/images/
COPY ./favicon/ /usr/share/nginx/html/favicon/
COPY myel.conf /etc/nginx/conf.d/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]