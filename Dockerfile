FROM node:10

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install -g loopback-cli

RUN npm install

COPY . .

EXPOSE 3000

CMD npm run start