FROM node:18-slim

WORKDIR /usr/local/app

# first copy packages to leverage layers cache
COPY package.json package-lock.json ./

# one layer for all npm commands
RUN npm install -g nodemon &&\
    npm ci &&\
    npm cache clean --force

# now we copy the rest 
COPY . .

RUN mv /usr/local/app/node_modules /node_modules

ENV PORT=4000

RUN node server.js