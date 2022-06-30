FROM node:16 as base
WORKDIR /home/node/app
COPY package*.json ./
RUN npm i
RUN npm i -g serverless
COPY . .

FROM base as production
ENV NODE_PATH=./build
RUN npm run build

FROM base as development
RUN apt update && apt-get install python3-pip groff -y && pip3 install awscli awscli-local
