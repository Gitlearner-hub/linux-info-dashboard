FROM nginx:alpine

COPY docker/nginx.conf /etc/nginx/nginx.conf

COPY web/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
