FROM nginx:latest

# Remove o conteúdo padrão do diretório HTML do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os arquivos e diretórios do projeto para o diretório do Nginx
COPY . /usr/share/nginx/html

# Expõe a porta 80
EXPOSE 80

# Inicia o Nginx no modo foreground
CMD ["nginx", "-g", "daemon off;"]
