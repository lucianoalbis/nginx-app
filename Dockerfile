FROM nginx:stable-alpine

# Remove página padrão
RUN rm -rf /usr/share/nginx/html/*

# Copia seu index.html
COPY index.html /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]