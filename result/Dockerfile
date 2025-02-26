FROM node:18-slim

WORKDIR /usr/local/app

COPY package*.json .

#install nodemon with npm install -g nodemon
RUN npm install -g nodemon &&\
    npm ci &&\
    npm cache clean --force

RUN mv /usr/local/app/node_modules /node_modules

ENV PORT=4000

CMD ["node server.js"]
