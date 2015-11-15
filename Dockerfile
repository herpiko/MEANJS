FROM ubuntu:latest
MAINTAINER Herpiko Dwi Aguno <herpiko@gmail.com>

RUN apt-get update;apt-get install -y 
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

RUN apt-get update 
RUN apt-get install -y mongodb-org git python build-essential curl libssl-dev g++ libkrb5-dev
RUN mkdir -p /data/db
RUN service mongod start



RUN cd;wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
RUN nvm install stable
RUN nvm use stable

RUN npm install -g yo bower gulp grunt-cli express

EXPOSE 80:80
EXPOSE 443:443
EXPOSE 3000:3000



RUN echo "\nHai!\n"
