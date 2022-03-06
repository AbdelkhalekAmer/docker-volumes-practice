FROM node:17-alpine3.12

RUN npm install -g serve

WORKDIR /app/code

COPY package.json /app/code

RUN npm install

COPY . /app/code

RUN npm run build

RUN mv build/* /app

WORKDIR /app

RUN rm -r /app/code

EXPOSE 3000

CMD [ "serve" , "-s", "app"]