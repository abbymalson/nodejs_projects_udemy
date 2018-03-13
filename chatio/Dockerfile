FROM node:carbon
MAINTAINER Abby Malson

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

# Install app dependancies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

# Create app directory
#WORKRDIR /usr/src/app

#ONBUILD COPY package*.json /usr/src/app
COPY package*.json ./

RUN npm install && npm cache clean --force


# Bundle app source
COPY . /usr/src/app

EXPOSE 3000

# CMD npm start
# RUN npm start

# Copy the init script
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
CMD /docker-entrypoint.sh
