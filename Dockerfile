#FROM quay.io/ibmgaragecloud/node:lts-stretch
FROM node:16-alpine

WORKDIR /usr/app

RUN chown -R node:node /usr/app/

RUN npm install

COPY . ./

EXPOSE 3000

USER node

CMD ["npm", "run", "dev"]