FROM node:carbon-wheezy
MAINTAINER Abby Malson

# Create app directory
# WOKRDIR /usr/src/app

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV

# Install app dependancies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

#RUN apt-get update
# && \
#RUN    apt-get install -y python3-pip # && \
#RUN    python3 -m pip --version
#RUN    pip --version
#RUN    pip install cqlsh
#RUN    ls -lsR /usr/local/lib/python*/site-packages*/
#RUN    ls -la /usr/bin/
#RUN    ls -lRa /usr/local
#RUN    ls -Rla ~/

#RUN    echo $PATH
#RUN    python cqlsh --version
RUN    npm install && \
    npm cache clean --force

# Bundle app source
# COPY . .
COPY . /usr/src/app

EXPOSE 3000

# Copy the init script
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
CMD /docker-entrypoint.sh