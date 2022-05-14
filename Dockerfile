FROM node:14-alpine3.14

RUN mkdir -p /app

WORKDIR /app

COPY package*.json /app

RUN yarn 

COPY . .

VOLUME [ "/app" ]

EXPOSE 4000

CMD [ "npm", "run", "dev" ]