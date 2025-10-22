# Usa imagem base oficial do Nginx
FROM nginx:stable-alpine

# Remove configuração padrão
RUN rm -rf /usr/share/nginx/html/*

# Copia o index.html para o diretório servido pelo Nginx
COPY index.html /usr/share/nginx/html/

# Expõe a porta 80
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]