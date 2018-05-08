# Use an official NodeJS runtime as a parent image
FROM node:carbon

# set the working directory to app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Make port 3000 available to the outside world
EXPOSE 3000

RUN npm install

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
