FROM node:latest

WORKDIR /var/app

COPY package*.json ./

RUN npm ci 

COPY . .

RUN npm run build

EXPOSE 3000
ENTRYPOINT [ "npm", "run" ]
CMD [ "start" ]