FROM ubuntu/nginx
RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/FrankCipriano/API-REST-Node.js-MariaDB.git
RUN apt-get install nodejs -y
EXPOSE 3000
CMD node API-REST-Node.js-MariaDB/server.js

#-INSTANCIAR ESTA IMAGEN REFERENCIANDOLO AL CONTENDOR DE LA DB, use el alias "theDB" para referenciar
#-docker run --it --name container_name -p 9095:3000 --link containerDB:theDB this_image_name