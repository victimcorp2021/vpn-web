FROM node:14

ARG WEBAUTHUSER="juliec"
ARG WEBAUTHPASS="julie9008"

WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
