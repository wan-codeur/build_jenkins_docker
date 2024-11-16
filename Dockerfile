FROM nginx:latest
RUN sed -i 's/nginx/wan/g' /usr/share/nginx/html/index.html
EXPOSE 80
