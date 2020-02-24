FROM node:12.14-alpine

WORKDIR /app

RUN npm install -g nodemon

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT 80

EXPOSE 80

CMD ["node", "index.js"]