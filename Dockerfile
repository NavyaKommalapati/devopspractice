#FROM ubuntu
#RUN apt-get update -y
#RUN apt-get install nginx -y
#CMD "service nginx start"


FROM ubuntu
ARG DEBIAN_FRONTEND=noninteracive
RUN apt-get update -y
#RUN apt-get install apache2 -y
RUN apt-get install nginx -y
ADD ./index.html /var/share/nginx/html/

#RUN systemctl enable nginx

EXPOSE 80
#STOPSIGNAL SIGTERM
#CMD ["nginx", "-g" , "daemon off"]


