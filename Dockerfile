FROM nginx:alpine

# Crear usuario no-root
RUN addgroup -g 101 -S nginx && adduser -S -D -H -u 101 -h /var/cache/nginx -s /sbin/nologin -G nginx -g nginx nginx

# Copiar archivos de configuración y contenido
COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY web/ /usr/share/nginx/html/

# Ajustar permisos de seguridad
RUN chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chmod -R 755 /var/log/nginx

# Cambiar a usuario no-root
USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
