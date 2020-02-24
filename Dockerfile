FROM node:12.16.1-buster-slim

RUN apt-get update || : && apt-get install python -y

RUN apt-get install build-essential -y

WORKDIR /app

RUN npm install -g nodemon

COPY package*.json ./

RUN npm install \
    && mv /app/node_modules /node_modules

COPY . .

ENV PORT 80

EXPOSE 80

CMD ["node", "index.js"]