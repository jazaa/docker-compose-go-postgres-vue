FROM node:12-alpine as builder

WORKDIR /app

COPY package.json .

RUN npm install

RUN npm install -g webpack webpack-cli -D

COPY . .