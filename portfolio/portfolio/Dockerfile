# Use an official NodeJS runtime as a parent image
FROM node:9-wheezy

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Make port 3000 available to the outside world
EXPOSE 3000

# Define environment variable
ENV PORT 3000

RUN "npm install"
#CMD ["node", "app"]


# Copy the init script
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh