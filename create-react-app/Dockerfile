FROM node:7-alpine

RUN npm install -g create-react-app

RUN mkdir /project
WORKDIR /project

ENTRYPOINT ["/usr/local/bin/create-react-app"]
