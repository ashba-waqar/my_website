FROM nginx:1.10.1-alpine
COPY website.html /usr/share/nginx/html/index.html
EXPOSE 80

