FROM nginx:latest
RUN sed -i 's/snginx/xavki/g' /usr/share/nginx/html/index.html
EXPOSE 80
