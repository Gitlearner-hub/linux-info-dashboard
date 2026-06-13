FROM nginx:alpine

# Copiar configuración y contenido
COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY web/ /usr/share/nginx/html/

# Ajustar permisos
RUN chown -R nginx:nginx /usr/share/nginx/html

# Ejecutar como usuario nginx
USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
