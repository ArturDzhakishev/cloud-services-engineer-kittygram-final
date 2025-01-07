FROM nginx:1.22.1
#COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
#COPY ./nginx/site.conf /etc/nginx/conf.d/site.conf
COPY site.conf /etc/nginx/conf.d/site.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
