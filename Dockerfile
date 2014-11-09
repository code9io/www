FROM debian:testing

RUN apt-get update
RUN apt-get -y install curl

RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs
RUN npm install -g less http-server
