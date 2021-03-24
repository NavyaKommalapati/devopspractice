#FROM ubuntu
#RUN apt-get update -y
#RUN apt-get install nginx -y
#CMD "service nginx start"


FROM ubuntu
RUN apt-get update -y
RUN apt-get install tree -y
RUN apt-get install nginx -y
<<<<<<< HEAD
=======
#RUN systemctl enable nginx
>>>>>>> 8a46c89651bac0418b9fd9a9f3c17a447e18846d
EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g" , "daemon off"]


