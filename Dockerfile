#FROM quay.io/ibmgaragecloud/node:lts-stretch
FROM node:16-alpine

WORKDIR /usr/app

RUN chown -R node:node /usr/app/

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

USER  node

CMD ["npm", "run", "dev"]