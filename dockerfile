FROM node:carbon-alpine

#TO REMOVE if you are on windows
WORKDIR /app

COPY package.json ./

RUN npm i -g nodemon

RUN npm i

COPY . .

EXPOSE 80

EXPOSE 443

CMD [ "npm", "run", "dev" ]
