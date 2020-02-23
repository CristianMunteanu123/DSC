FROM node:13 AS base
WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app

EXPOSE 3000
CMD [ "npm", "start" ]