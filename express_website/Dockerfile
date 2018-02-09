FROM node:9.5.0-wheezy as node_image

ENV workdir /opt
WORKDIR ${workdir}
ADD . ${workdir}

CMD ["npm", "start"]

EXPOSE 1337