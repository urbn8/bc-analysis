FROM node:9.3.0-alpine

WORKDIR /app/admin
COPY package*.json ./
RUN yarn

WORKDIR /app
COPY package*.json ./
RUN yarn

COPY . .

# RUN npm run setup

EXPOSE 1337

CMD [ "npm", "run", "strapi", "--", "start" ]

# CMD [ "npm", "start" ]

# CMD [ "NODE_ENV=production", "npm", "start" ]

