FROM node:latest

WORKDIR /usr/src/app 

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
ENTRYPOINT [ "npm", "run" ]
CMD [ "start" ]

ONBUILD RUN mv /usr/src/app /usr/src/server