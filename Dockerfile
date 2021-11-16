#FROM quay.io/ibmgaragecloud/node:lts-stretch
FROM node:16-alpine

WORKDIR /usr/app

RUN chown -Rh $user:$user /usr/app

COPY package*.json ./

RUN npm ci

COPY . ./

EXPOSE 3000

CMD ["npm", "run", "dev"]