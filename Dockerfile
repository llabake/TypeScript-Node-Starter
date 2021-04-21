FROM node:14


WORKDIR /app/src

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "dist/server.js" ]
