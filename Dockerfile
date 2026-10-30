FROM node:22

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --omit=dev

COPY server.js ./

EXPOSE 8081

CMD ["node", "server.js"]