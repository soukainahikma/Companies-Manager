FROM node:alpine

#Install some dependencies

WORKDIR /usr/app

RUN apk add git

RUN npm install -g npm@8.4.0

RUN git clone https://github.com/soukainahikma/Companies-Manager-Back-end

RUN cd Companies-Manager-Back-end && npm install

WORKDIR /usr/app/Companies-Manager-Back-end

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
