FROM node:10.9.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm run setup

EXPOSE 1337

# CMD [ "npm", "start" ]

CMD [ "NODE_ENV=production", "npm", "start" ]

