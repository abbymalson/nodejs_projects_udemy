FROM node:carbon
MAINTAINER Abby Malson

# Create app directory
# WOKRDIR /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

# Install app dependancies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
ONBUILD COPY package*.json ./

ONBUILD RUN npm install && npm cache clean --force

# Bundle app source
# COPY . .
ONBUILD COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start"]