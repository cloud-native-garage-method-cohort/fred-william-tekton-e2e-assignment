#FROM quay.io/ibmgaragecloud/node:lts-stretch
FROM node:16-alpine

WORKDIR /usr/app

RUN npm config set unsafe-perm true

COPY package*.json ./

RUN npm ci

COPY . .

RUN chown -R node:node /usr/app/
RUN chown -R node:node /usr/app/.next

EXPOSE 3000

USER  node

CMD ["npm", "run", "dev"]