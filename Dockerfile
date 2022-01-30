FROM node:alpine

#Install some dependencies

WORKDIR /usr/app

RUN apk add git

RUN npm install npm@latest -g

RUN git clone https://github.com/soukainahikma/Companies-Manager-Front-end

RUN cd Companies-Manager-Front-end && npm install

RUN export NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /usr/app/Companies-Manager-Front-end

EXPOSE 8080

CMD ["npm", "run", "serve"]